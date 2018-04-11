package tp07

import java.io.FileReader
import java.io.PrintStream
import java.io.File
import scala.util.parsing.input.StreamReader
import scala.util.parsing.input.Reader
import scala.Console._
import Util._

class Interpretor {
  val parser = new Parser
  val evaluator = new Evaluator
  val formatter = new Formatter
  
  def interpret(reader : Reader[Char]) : Unit = {
    System.setOut(new PrintStream(new File("src/tp07/results.txt")))
    interpret(reader, List())
  }

  /**
   * Interprète le flux fourni par reader dans le contexte ctx.
   * Une analyse syntaxique du flux est réalisée par le parser pour construire
   *  les termes associés aux commandes du flux.
   * Au fur et à mesure, le contexte (une liste de variables globales et leur
   *  valeur) est injecté dans les termes et, pour chaque terme clos obtenu
   *  après injection, les opérations suivantes sont réalisées :
   * - évaluation du terme
   * - formatage du terme obtenu par l'évaluation
   * - affichage du terme formaté
   * Le contexte est enrichi au fil de l'interprétation, chaque fois qu'un
   *  terme de la forme "val x = t" est rencontré.
   * Un message signale l'apparition d'un terme non-clos dans le flux. Un tel
   *  terme n'est pas évalué.
   * Un message d'erreur est produit en cas d'erreur syntaxique repérée par le
   *  parser.
   * Indication : pour alléger cette méthode, on fera appel à la méthode
   *  "interpret(t: Term)".
   */
  private def interpret(reader : Reader[Char], ctx : List[Alias]) : Unit = {
    parser.parse(parser.prog, reader) match {
      case parser.Success(EOF, _) => // nothing
      case parser.Success(matched, t) => {
        interpret(t, buildNewCtx(ctx, interpret(inject(ctx, matched))))
      }
      case parser.Failure(msg, _) => println("FAILURE:" + msg)
      case parser.Error(msg, _) => println("ERROR:" + msg)
    }
  }
  
  /**
   * Teste si t est un terme clos.
   * Si la réponse est négative, on formate le terme que l'on affiche sur la
   *  sortie standard et on signale qu'il est non clos.
   * Sinon, on évalue t, on affiche le terme bloqué obtenu et on le retourne.
   */
  private def interpret(t: Term) : Option[Term] = 
    if (!isClosed(t)) {
      println(formatter.format(t) + " : Terme non clos !\r\n")
      None
    } else {
      val value = evaluator.evaluate(t)
      println(formatter.format(value) + "\r\n")
      Some(value)
    }
}

object Main {
  def main(args : Array[String]) {
    val reader = StreamReader(new FileReader("src/tp07/examples.txt"))
    new Interpretor().interpret(reader)
  }
}