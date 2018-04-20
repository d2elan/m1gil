/* Insertion de nouvelles valeurs dans USERS */
insert into users values 
	(1, 'admin', 'daniel.henri@gmail.com', 'admin', 
		'Daniel', 'Henri', '1996-12-04', '0699999999', true),
	(2, 'blastfk', 'franck.caron76@gmail.com', 'azerty', 
		'Franck', 'Caron', '1994-10-25', '0235107790', false),
	(3, 'elpat', 'patrick.elliot@gmail.com', '6526r156163', 
		'Elliot', 'Patent', '1990-02-15', '0232323221', false),
	(4, 'divag', 'dimitri.vargas@gmail.com', '123456', 
		'Franck', 'Vargas', '1981-03-29', '0452106357', false);

insert into category values 
	(1, 'Mathématiques', null),
	(2, 'Informatique', null),
	(3, 'Electronique', null),
	(4, 'Physique', null),
	(5, 'Algèbre', 1),
	(6, 'Théorie des groupes', 5),
	(7, 'Calcul', 1),
	(8, 'Intégration', 7),
	(9, 'Jeux Vidéos', null),
	(10, 'FPS', 9),
	(11, 'RPG', 9),
	(12, 'Jeux de plateforme', 9),
	(13, 'MMOFPS', 10),
	(14, 'Single Player FPS', 10),
	(15, 'Destiny', 13);

insert into article values 
	(1, 'Les additions', '2016-12-28', 2, 7, 
		"Introduction à  l'une des opérations mathématiques les plus complexes : l'addition",
		"addition, opération, difficile, mathématiques",
		'<div class="section_container"><h2 id="section_title0" class="section_title">Définition</h2><div class="article_item">L\'addition est une opération permettant de répondre à la <u>question suivante</u> : <br>"Si j\'ai 2 pommes et 2 poires, combien ais-je de fruits ?"<br><br>Ainsi, de brillants mathématiciens arrivèrent à répondre à cette question pertinente, <br>avec le calcul suivant (cf figure 1) :<br><br></div><div class="article_item"><div><mrow><mn>2</mn><mo>+</mo><mn>2</mn><mo>=</mo><mn>4</mn></mrow></div><h4>Figure 1 - Première formule d\'addition</h4></div></div><div class="section_container"><h2 id="section_title2" class="section_title">Un autre défi</h2><div class="article_item">C\'est alors qu\'est venu un nouveau défi : "Si 2 + 2 valent 4, combien valent 2 + 2 + 2 ?" <br><br>De nouvelles techniques de modélisation furent conçues,<br>afin de mieux représenter le problème (cf figure 2) :</div><div class="article_item"><div><svg width="200" height="150"><circle cx="50" cy="50" r="20"></circle><circle cx="50" cy="100" r="20"></circle><circle cx="100" cy="50" r="20"></circle><circle cx="100" cy="100" r="20"></circle><circle cx="150" cy="50" r="20"></circle><circle cx="150" cy="100" r="20"></circle></svg></div><h4>Figure 2 - Première représentation en 2D</h4></div><div class="section_container"><h3 id="section_title3" class="section_title">Vers une autre approche ?</h3><div class="article_item"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAIAAABMXPacAAAgAElEQVR4nO29d3xWRfYH/D0z9z4lBQgh9N4hVAGlKxZQUFGxg7rusrZ1QUXXsq5i29VVV3R/rq66uq6KDRSxIEUREFRCkRoICIHQIZQ8Kc9z751z3j/uk5BAKAl59H0/r+fzCJjcZ+6ZOTNnTvmeGRIR/Eq/HKlfmoH/v9OvAviF6VcB/ML0qwB+YfpVAL8w/SqAX5h+FcAvTL8K4BcmK0HtiggLERhKgZkXzHdefY2zfxRNutsZgSuupNP7UFqaAtj3BIkgokCgBHFUkT2wsIAIAJESALGobN0mO3fwnt2qWQvVqhXVzxCAhAkqcVxR4jxhZmFF2J/vPfWMO3MKPEPBZAjEKSDSqll7ff5w+7LLqGlTABARgIh+lvGHiAgEpADI1jxvxkwzdzZvzkbkgAiglWrY2rp0lH3DjUhJIiRwXiRKAAJARKIl0T/db76aqlp0ti+/WnXqKJ6RjT95330ryxd5hfutxu3t3/xej7oMyclKEtnRo4gB2bXLnfyu+/EH2LsR4XqqRXvVrj3VqcN5W2XZYonsUcOuDD/xOCUnJ5APSQyxCIvE3nqnoFPTwksv9XK3cLlfGWPclatKHp5Y0LtLpFPjyJjR7vIfjYgRMWwMm0RxxWzYsIgxnjt9etGwoQUdGhX07VHyl4fcxVlcGIlzzsZdtjxy0YhIp8bR/3vJZ4yZT9h+NShRAhARLigoHDm8sHsn99tvjYgp7QALG18MIt6SJUU3/jbSqXGkb/fo25ON6xoRY0xC+irCYljE27mr6L77I11aRbq2jo6/y1u7xlR4ho0YI+IsXRrp0z0yuJ/J28bl+K9ZSqAA3EWLIl1aFN14IzsxI8xSTgCGmQ0zGxFTXBh95dWCXpmRzs2jD000hw4ZkbKHa5ycxVnFF40o6NggMvS82OczPM+wiCn3PiNsjDFsDEvx/X+OdKgfe/c9IyLGnzY1TIkyQwUwK1eK61h9zyA7oEBl6p1ApMj/jyAqnBz4/djwpFdUi07O+y/F7rpbdmwHiP1FjxrZokQgDHjTpsX+eKu3cZV19qjwq69Zw89XWgHlmAMUoJRSpIigzzkHKiBZi8HMidmdEiUAAnjzJpCtOnSs9Lel/yAAJKIG9g++9IruN9xbOD12++0mZwNIAYKa2JUFJJ7nvvzvkon3SLQgcOudwWefoebNSRgCOvIdZRMFuk1LqdPAbNyIWBQESM0LIWGOmDHYs49CIVW/4QmfFQiEVYvm4Un/CIy4zmRnxcbfzitWQCmqkRUQi8aeecb551MUrh185OnAH++gUBjg4zctEKqbrtMayKE9cqgAUAkY/4QJQIyRSAFCqRIOnfBhIqVIAUDtOoHHHrXH3MZb18TuHGd+/FF8XSSM6khCBJBoNPrEk96bL6v6jYPPPG+PvBgAAQpxPXMcUsnJSA5LLEYlJUctlJqhBK4AKYqoUBIFAyf5DQJEwOFw4N4/2deP590bYhPu8JYvJ1I4Wk+cZJPRWMnfnjRTXqKWHULPv2gPGHDyDVX0SRLlnyQuFkRQClK1rYsgxEyWFbhrvHXdONm12b37Di87m4iqsQIkGos+8YQ35RVq2TP03CTq1r2GtvSapIQJwFJUK01KiqSk5OS/RERKKQLIDoQmTAiMud3s+sm5525v008CYhGAT9iIAAKRWCz21795U99QzTNDzz5vdexc1YiCACz+65TIid9bPUqYALRGUpidKGJutb4vbNuBu+8IXH6T/LTEve9+3rkbRHwS+yABYth54XlvyquqeafQs89Tpw6ouhIhALGYREsQDCKclCAdlDAzVGmqmw6nkAsKqvF1ESFh2Hbg3gk0/FpZOT/20J/NwUMnGawzr7/hvPkiGrYNPfuc6tyZqqV4BJCiIikuQihMKclyEouvGpTAfACl1yNjeM9uAbiK7CtSihQBkpQcevAh6ne++fYz76mn4Djsh5IriSEKCwvgTJka/efTVKdB6MmndWamAqoXYiVACgpx6KCq2wChkzUlqkoJ9IRV40YClh07ARBV/02UlmY/8YTu0M+b/r/YK/8GBKSkkkElkHLnzXOfeoRsHXr4r/r000+lCwCwb58U56vGTZUVkMQYQolKyBCApk2ggti8iQsKSABIdaL9IoCoWrUD99zt/OlO77V/qQYN9dBhAAuOtOLNpk3eww9wrCT45yfUeedCpJqTv+zluVuJHbRoKkQkCRFBogQAwGra1E1Jd7+Z7S5drOIq4xSsQG2BWSzLefqv9O9/VfoIlxRS5KA9dpx15ZUATj27YzbnCrTVooUAVENxkSMogQJAvQyu34h2bqH8qNEgxql2QGkiDTZyYF/lDxjHOn1g4JabQFAi1Vpxh4kN86YcCoSpdRsF/H9MBQFA7dq6aVPeuVWaNlc7trNG9ayRI4kqzdASSEhs9oxv7AtAp6aC6OBB3ryB6remRg0FOFV1dgxKpBWkyOrSTaIF1hn9Vd0MsHfsR/0Plf7jRJ+Kho0C+bIlrWTjeuzcRb7+qe6I+frSy90ie3aq1q1U3boEqMQ4AglDRUAIRJ0zCQwjNHIk/fsFBCt/nXgxcmNCiEfJTtQ0gVkrssIgBRArI06UoGHZXHjQW7fWbtH8VFgHkQDIzqbYft2jV2KmfpwSaAUJoNq1pVoZvGZV8NHHzNQpcigfSh/5qPF09766R3dho04UOvLz9qIgBw66X04nMYCCF7OGjERxxGQtIhPlFSsx7PxT3DFFxPtxmVgh1SXzGGwc9wcnTYnbA0gAapBBbTN5zXLYyhp1lfPyMxROBSpaQ2xgB+xx40DqZBSi31cGdFJq9P3/EFgPvSz42CPQljft49gTD5pVq9h1YdvVs1vE3z4OFfDaVap+c9Wu3dGt+DpKKJ6jEZF4oKnqUkigI0bCCARVz15SvNesXG1fc6Vq2BzmKI/YDvLib7yvv6F450/UsghDAJhWTSAeGUGzpggEoJU9alTg1gnIWUO7dlHpMFWZSADwhvXI26A69aT6GZW4fBR3aigahecqUkQk1YnYJjIl6dvhVq+e0AFZuIjqpuvLrxa3pBIuSXn/e0NKik9mwpIIQN7qNd4/X1CBsIRTzJsv8aLvAAigr7maGzQyq1YjPkOrTL65KUuWs3NI9+mNcsuyzJURI+7nn8fuu69kwt3RCfdFn3+Bd+4+yQl0BCXSCgIRoDtnqoatvJXL5VCBfemlqkFTOcocEjskP37vfTUXfk7m+DNXKUQKvKeelPw8+5ZxgTvvkeKI+9TfZd8+AColJTDqKi93q8D3PKrBNsR1vcXfU1K66tML5aa1CLNAnKjz2ONmxkxr5CXBu++2b7+V6tQquXOcl5NTDZEnHpxbry516yPb1/HqVVS/vn3NaHKdI5kQsGV577xliot8VXr8ieS++h+zZLY+60J79HXW5Zfr8y41Od+5L74MZhKxrhtt/e5GYqZq+R0EwtatvHapat1dt25T6gPHf0lEzpSP+cC+wIQ7vQ/edz+Y4r78CjVrGrjhRufJvyIarerrEi8AUlb//uxFvUWLCNAjL6WmLWEqLAKBKG2btcvN1/N9TOPRzYiIPxfNgvnOWy9Tw/bBP92HYJAsO3jnBGrc0f3of2b2HCEiUjpgg6qpggB4i7Pk0B7Vvz+SkkS4HBiCxHHMl18Gxv5eGSOEwD0T7BuuM//9n3XWYLDiFSur+q6EC4AA3bMn1Wlivl8kxUWUnq4uv1q8YlRMrogoUsq8+46UFIuqZDsTEQF5e/bEnn5KuW5w/D26VUsCAFEtmgXuuIvYi016lnfuAvmkqgc0ZWazcBGskNW/HyraNkRAUSGihbpFCxGhzVvcF15wJ79NPXpKOEm3bycbNlT1dT9HfYBq2UJ36y0b1si6DQCCI0dazTOFvSMH2Qpi9ffenLmodC8mEmbz0sucs5QuvFpfNCL+YyFh0cNHWMNHYfMq8+KLYHMq3Mr2bbz8O6tVZ5XZpZTBw4wqrSGaY1EAXL8+WraUrduDt9ysACkulKQqw3gTLgABw9L2mWezc8BbMB8A0tP1mDEU846eoUbZ5r9vIBIpE0EcGicAkTdrljvlTdWqe3D8OOhSzgkggdb27eOlRWdn+mQz56t4WriKnPrP84LvzP6tNHAIaqVQHFRAZY9wSio1a26++06URUlJgUsuUaed5n4ynSMRzl5n9ehR1fH5OVaAANS3r6rdxMybK0XFBOgLhlKbTjCxI54kO8QbVngzZ5X7rogwE2TnDjPpHwIExt9JjRpSueFVpBSgmzUN3j6eBLEXnjd79kgVkfcMERH2XPebr8kOW+cMUYhjKCt0RCnrN9e5/32Lf8qxLrlEAPvWm4k59vDDesAAatWiqoPzMwiA4Guh7qebjctl9RoAqnZa4Opr4R2ZrycRWLb37ttSmkkmEhCB2Xvp396W5dbI0Xro0GNZN9b5w/W5l8rG5eaVV0WkauEzARGZnzZh2ULVvrfO7Fz5Uyy6W/fAneO9t98xS5Z4n3xipnzkLlxIjZvat932/0YzlEAEUVrr84bBiZq5X8E3ey4arjJ7w1QwSYUI2pIdebJ/vwAMgRCBvG/mup98oFp0Df7hNlJKUHl2imxt//EP0qCVM/Ud/n4xQOIvodLmj+Oq+vqQ535jCvda5wyVcFJlz8ThY/agQaHnX7C6dqP9BykUDN05Pnj3XQgFqeq+98+hgvy+6f59kdHcfDOXDxwASIWTKT39yA1TRNyYOmMwmjeDCDGEiPPzzfOThJ3AH+5Co4aCY5YyCaBatwre9AeKFbn/fI4jEYCYRIRZhI+/LRBJcbGZM4tSMvSQMyudyT6k20+EqrQ61tBz7RtvsK+6SrVrT4CqVoXVz1clqZo0tvoP8fJWcdYSAszGHLP0e1jBik8xlG1fPkopLUR+DN57/XUvJ8s6e6Qeeh48h0qiiEQQKZBIpOKngKJReI4eeaE642z+cYH73gcACIpIxdX5sQeIAF7+I69frnoNVO3aVnkLry4lIhoqcc0hcoQZbQ8fbj5/z5vxhTX0PG/GTBQeQii54jcV1U7h9TlOzjqOFNGhiCkuxLw5SKpncnOcW25mI+JFURJVlY5QKBUBi5TGrt0Squ2+/R9vy09WKAW1UiglBcmpqJ2qk1MkNVWlpKJ2KoVCCAYRiENO3M9niHGskSNJ6zK9RX5mQ0RISvNBUoOlbDVdpOcrXRJ/9nLcghM4jhQUmtxNsXvuhldiX3SlmfMF5+89Mj0gTE4JOwchANkUSCZFrANKW0JExmNFZAWPmSFhgXEhRrRFxhCzeEYkBrcIHIVYUBasEFlBsoIIJlFqmmTUV3XTVb10SU7xpn0I4dDTk1SH9khJIdtGaejb7wTABECIai49VsMCiLflxHjfAdmzW3JzeUueyduKrZt4/146WMCmiHQQXrHYqX5Yt9yXGaGQdcmVql4GUlORnOTNnGXmTNVdBwX+dLeqUwcirLVKrmR79PtCAi4uhutCkezb50z8i9m2JXD5aHV6XymMoKCACw6hoAD7D/Ch/VIYQaQAB/dz0X6wIRWSoA3PIBDWKbVQv4Fq1gLNW1DzZrplS9WgAdVNEzvgD3wNZsiqKoD4nI4X9QKIzwzD+/ZL7hbemGOy18uGHNm5RfbvEM+BGNgpqnZ9lZaORg2RVt98O4tiBnQ4eCvESrQ4hXr4VcG/Pe43y/l7Y2NGm1154X+9rvv1k0gBAAWI/8cxO0Rx40cp7/33Y/943O450P7Hs5ScDMtSto0ynkuiKCnm4mKKFJmtubEnH6OSqBo0BAcOyO6dyN9rCvbAKwER7JBKb44mzXSbdqpzF9W2lW7ZAml1yxJIApCAiZUokAAicoLKgzKq2h4gUprpJogxsnu3rM9xf1zBa1ZiwzpzYCecCHSSTsmQxo2tXn3RsrVq3VI1bUbpdVV6XQmFAcTGF5sFM2CHy5pVAiERZdkXjiDfeRa4//dvs3mFfdVtuu8ZUlQce+AvsmapBFJIqxNH3cmQEIQRTvPWfu9dczXCoeCYG3DlFf6YEYBwCOGQrluXAdq/X/K3qb7nBp96EiCKlsjefMnPN3l5tHGTl5fLm36SDdnusvkwxQikq4zGqn0H1bmr6tGDOrRTGRlQivwSmtJpdZKrpGoCICIpiZqNObJ4ibt4MbJXmn15wg6F6lLT5rrnJVZmpurQnlq0QL10Sk4uP1cFIDBDUUa6VCx5Y1LklejOvVWvngAIymRleZ9MRqMO1tjfCSmEQ4GHHjRffeW89IIU7IMOHsNKobjp77NKQmSBbRzcE3zoRev0PgAfbfgRs/vBe/DEuuQyKE1gJCVTi2Rq0Vyd1hOABZHCQtmXz1u2cPZ6zl5j1q8zi752v5lCVtCq11Y6d7PPOIP69FJt2iAYRFWy+JUJQERARFxWv+bnKDh7rTtvAS+YyxuyuXi/CiRR03Z239H6tF7UpaNu1hy1a5e9uDSPKqVWBAmJQGHnbvPNV2RXqFsiQIynR4ygUEgEiEWdl15E9FDgrgesZk3j6i4jQ199terQKTZhnBTki2URIF4MbA7XX5JAh0pfrQCQtlTDZt7mNWbRImvQoErLC7zsdd63X1ttu+lBA0stNzk8iAIhopRUSknVLVvizDMB8IGDsm27WbPWW/wDVi0z8z/15k5R4Qzq1E0PGmwNHqjadyRLS+kIoEKLJxIAx/+guLe5e7c3b773xedm5WIpzqekDOrYJdB/gHV6f2rfTqfVqXTFlZmecTM03il433zN+7ZTsKL1yUbVaxQYcrbPpTdjJv8wV3XrHxg5EnG+yQe66J7drcuudl/9h4IlxLpzb5VWH3B970xiJbxiuXixOBTYeNS4hf2Xh+SucWbqO96FI+zMLkd0VgCZ9gkK99Ild6rUWsIMVdHEqczkVGl1JK2O6pppX30F79tnr88x331vFi/gNVne0jnea410zz7W8BE0eJBOT2cChEsxTychABJAKQGQm+t+8qn32ce8bR10gNr3DJ19Lp15pm7floIh369n3+w8mfNEiFBS4n02nfRRL3Wiasg11KghAM7f5/7nJdEh+6ZbkZpaAfEhAEF17ihKiWKICoz9vRo8UJW2b7Zsid56s+ze7idyCQytVNdu6prr3UmPuK+9Yj076QjoheRtc76cRo3a28POBwBSdDJQisOTTlS9eqhXTw3ob5fcIuvWu998Y76ZbRZ9ZRZ+qlp01xddZo0cQU2aHqulw2Mh4q91iCLem28mv+tOeRd7f5LUDGv41fbFF+vTelFqanku4pOD1MkAQAhwli832SuonPfr7woqELZGXOBrB/Pe+7xxlR42yho8WMrNPyF/dyPZvYvYA8IwnvPi8+Ee3VG7tv+M+8KLvHMr2aH4DqEs7Nwmu3YErrrCTP+Yv5ppFi7SgwZKfD5CiMynn/Pe3MCNE1STxogry5NBBsThj+L/BSIwhZPQs6fq2RO/+633Q5b3yafed7PNCw97H76rrhkdvOIKpNURCEkF1HD5lL/4iDAz60vnxuucl/8qbpF91S3h/74ffOYZ68yzpMLox3Puh62iE5KAv5gB4x6e0AQhDa+EuvfWXTIBSG6u8/7blFrX/t3vxbIQB6AA/vwgwPW8efNFBcTfooqKwOXUenEE5QpaRSkpOshfz6O0uvaNv2VT5Lz+H445vvEtRNiX70yfqlMbWZdcFO9LlXxc8rvvj0PpOgSoVm37vHODL/wj6bXJ9sjrpOCgee7h6O9vNAsWHR6wowVApFBS7Dz1TPSecZK73j7n8vArb9mPTPQDsww+RWgt52315s8iO1w2plRqtFgXXUx2ACLOW2/Jns364it1t67k18WV45ZAZulSZC0gO0j+bKGKJk3F/1UCtmx32lSJROzhw63M/iZrPn/9tY/oAWC+mMFbVqhzhqv2HWvKHS3F4QuUpp49Ak89HXzlNTXoQpO9LDp+rPt/LyJWIQuiRESEBZBIJPrgw+6bL1Ct2tbEvwcmPWt160oQQIhIVRfrLRBhYcCbPQcH9lYcIyLjUZ0M3bevALJ6rffpVKrfxr7hhjisqOLoC4s37WPjOQBIlF/1VB6KI8J+ULn01UTaktxsb/58JKdYv/0NQdy3XpeiIiiSQ4e8KR+qUF37yitBVFMVrHGmKQ7JIMDq1Tv0z3/a9/8VoaDzrydjf/sbx6JlkXHlazJhz/3H8+aLt6hlZuifrwYuHwXL9nWi/6k+QNXfHSIR77PPYB9RNe8JWRLZL6uyBXDfeosKtgeuGo3mzUn8V5aTFpFszPHmfU12qHTUFdhUOHCAGRCSsviSgDST9j6aAtexzz5XnX6W/LjQ+3KWAsyML83GLBo4VHXvQqW7Qg3SYe4FEgwGxowOPfMvqt/a++BV58WXpbTkVkFIFHlzvnGmvIEmnUJPP6t79BBmCJ+UZj8JPkDkLV7Muauhjyh1UyIePNeZNlUWLTJzplOL7urKKwg4GhkkgJn2qRTnl60hYhdNWlKtwzsTtWlHnki5PQYiZAVl+Q/e0qUIBKwxo6FD5r3JJm+r9+F7EggFRo8mbdVM4cIxSCBKhASqf7/gk3+ntCbmrZc4a4mv/5UoguN4772jJBr8451WZiYAVV1MR2VEwszTP5WjS3y9mO5ymu5wGi9eGHv0QXai+trrVUbGEaBOvyJSdu1yZn12OIAhEBFr1KWwDwvVungEUuuIeKUvjjsfYow75SNhtgcNVv3P8Tauif3lL/zTOqvfUB/7dlS1WY0RobRSgUAsuu8ZauwfOFbsTn6bmOGXHfDOHZy9glr2tM4+S0p935o6Pk8A2bjBy/qW7KMqPQ3b199o//Z6uFHs2qbbdLEuvqiM7/jXRfzEgvniC+zZDhW3m8XEdLtu1sAB5XW3at/RGnQ2nMO7XBxRYQf427mycQNs2xpzPZHilYtB2rr6aqX1yVpx1aXDDhgRAfaFF6iGbbxVyyU/H74AVGGxRPLRtDmSUhJxmII3Y6YU7ReqGPo3Hlq0s07vg/6DqGET8Yw1YoSVlhY34cstFyGiggL3049hBcv2BPI869JRSEktrz1IKWvU5bBCqHiygCgtxfvNJ9MB6H59de9+4paonn2s/gMSdQLBUVQWptO166j6DVRhIRcVAVACSFISkmtj7x5xYkKoEXsgfhYawAf2m1lfkhWsoGeJxY3pCy5ESgqtXi35u2EFvBWr2XX9cG65GSkAufPny6Yc0pb4XWFDTVpZQ4fGgxS+JQcR46mePaxeZ4hx6fDEAwlRIOTM+IL37KaYwwcOQdlSEpHokSjVBFIp5pKLi3HgAMIpCIXgC0A1aqRbZ5oNyyQriyoPflSDyFflvGCR2b6eVLjc3kjEUCl1AkOHgj3v7bfFiUkgLItmet//QHHDrKwdRY5jPpoGBfF7IIAbtUdcpOql++Eq34OXvG3OY3+D1vqKqwFP/LB2ad9FBbBvq5k12/3sU6xbrHRQ1q4ys2f+bDlxLjUlzbz53vYc1b69qpcBQJEAoaC+/AoY4zz/vMnfWyPvI4goItd1P5tOFBDFVKoWlAh7Lg04S7VpbRYv9hbOUZmnBW6+nV3P/Pd1icUqnE1FMFlZ5sd4+p4AiEFaXX3RxfHXIG4ymWmf4MBeUsoa0F936A3PKeedCgESSPL+91/3tVc5NUNdOYYs7bz3npQU10h/T0j+0XS8eZP3r0mi7MBV15KlEVdBAj3iAnX2JbL2O+eBh709u/3p43tofIKTvY5D5GWvM8sXQwfBhwPxAgNw4KLhYHb+N1ncmH3ZVYHR1+iOPb0fvjYLvkU8oe9zwc60aWJciVufLG6xddYwatmCS098JFJmW577/mTVfwAAJIWty0ZJRdgdCYgs2b+H92yy+w8Jjh9H3frw2sVm3nwBfFc0ESQAC/sRFf5pU/SB+7F1rT3qOhoy2F/mftRQVCgc+vP96rSzed5Hzm23mh9XAL7zW81dytfi5vPPKFbsY+MO/8rzdGYfdeYQb8WPZtFs1bWPddFwCoXt3/+eyHb/+xpisdJoAZmffpIF31AwoPwRYlHJ9fSYMVQaiVGkzK6d3sRHufCA6tYVAAH2OUN00zZiTDl+AB9oGqytr78O4STrqmsgnvP++4g5UvZITRMJhJQA5utvon8Yy8vnqQuvD024C8ryzQ2LRIRADDRsGJz0XOyJv3mzPojefIN93Vh9zdUqvV71zdHdu8xXM4/yfkFECGrvncne7DlkPCuc6k75GOJRSVTVrcdrVzjPPKtbtvQ9QeeHHzhWQHbQ1/YAULuOfPed+30WSAgwhw7xrC/NprW6XXfdrKW/1VF6Oo24HC8/hWBqxXdrYpdKSgBYAwd5XQbw0vleVpYeOOAYYLtTJoJs3Wre+K/z8bswTmDMbfYdEyQluczPJZay4jIhkMQc553J7qv/kgNbVNte9ujr1fnn6bT00gBj3GU/lpfAAAkLQKTc99+LPfGQCoWOOJ2UAGZDbhSWDSsI48GNAQJSEgiDQLHiwxlHbcMOVBgcYThRP64Lv07RttlzA5eOCUx8GPDz45AtW6PXXyWFhaKJRB8O4buF+tyRwb//nZRy3//QmTheDb0q9NyzpKoWCT2C/Fgtl0JW4qGebTvcT6a5H74nu7J1iy769gn2iOEUz1WUelwVvE4/bwtw9nrzxuvunOlSUqhaZ9oXjtRDh1KbVvFt7bhV+36D7MRiY8eaNcuUFUg0yEwBnlMcevSZwMiLS3lgIRV7/G/mg1cRqkPwyiaBAKQRfuNd1amT5OcXX3eN7N2T9MbbqkuXU1kALEIkAuWnV2Vttvv5DG/mJ7xzo0prYl1yjX39tapRE39wyvvdeuLEiYebieNMmDIy9Hnn6t794RCvWeHN/9z7cpasWk+GkVqLUlOOxas/1EJksrK8N18jSyfUyfSZZrAOJAdvvoXS00vZIBCseuneF19CTPkMqSKWaCFZSWrQICQl4WDELPgcgdr24PieY5YAABP1SURBVMGnxgVBSLZu9b6c6bwwyX3peZM11wqlWlf8JvDgRPvii5BaC6UmW3n9cQxckMQXiQg4e633xQyeM9PkZZMwNWyje/XTgwaq7t2oSRNlxWMD7LdFfu8l+ueHvE/fRbA8iMqHYZH4e6cQ46gimcOPEuJNqVKhGmIAWlDhDFECYBzdrlvgzTf1EZBm5pK77zFfT5dAmA6rQQaLql039Na71KQxb8mNXXul2HbonQ9UkyY4OiccHw1fsULF83JxrAIAKYnylq3u0iWycCGvyOL8rWQnqY49rQtG6HPPVc2bHwVUqNjT4wCzWFB2TBHv34+spe6cOWbJQuzeImJUnabUIVP3Pk1370Ht2lF6uo/lE0C2b4v99kYpLowniw6Pl2FSiiGxqMBTwVRUfh4lIRqBKCaQlNqvwhQM4eh8MkhiRdYl1wTvv/fo7nnfLSr5w02k1RFoFIkVhcY/oH93IwGxhx5yP3g9eO/jgRt/4+uuo7wzKQ3rlf5/NIa9ezknx1uyhJcvMTnZKN5DdgqatbMGDLSGDKFuPVRKsj/qx7diji8APz8q/opW8UsPdpuVP8oPWd7SH5CbwyUHyUpGegPdtpPq1JkyM3WrlkhNpZIokpNABGEYgTCY44C16Z+6Lz2jh1wYnDDhCO5KNyZy357sfvAGBZMZhkSBDaU3DD31tKSlVQLLMoK0OkirrejIoTOOE7vlVrP8W7LC5X8uxlHN2oTffJPq1PWWLon97jrVtlP4zbckOZmOwt4yQK6RQwfMtu3I3WxWrjTr18umHDm0E+yqlPrUrrPudbru30917kJ1apUateLjCI/mqjwdD5hVulccnqUKQMMGuuEwGTrMLiziTRt51RqzfBmvX+st/x7fzYJ4SKqnGzRCmw5Wy1bUqjW1bqUy6lF6PUmKn/xoli2DZVvXXKNatSo/7mVTTAA+dBDQTEaLMsTkRu0LhlPPHnQ8QH0lM4kCAfuKK8yyBb7aPYx51gHOXe99M9++5BLd8zR1xgCzcI6XlWWddRZAzB4dKjQHDmLXTtmcy5s2mZ9yOG8r8rdLtICUpnBt3bwDnXu+6tlDd+mKZs11+AikU/k88fHoZJFxRywjEaiUZHTrrrt1t0Zfi4MFsnO7yV7POTm8fq3k5fK3s82cCEhBW5SSptIboV6GatmS7JCszKKGLZGcbHbtVqEQwmEJBspUlQCSnW2+mS3BoBI2YGKgVh198SX+EIKOZqdSHv0fiR44QLfpypuzK6SDiElp76OPVf9+BFiZ3WXhTPe/r8v6Dbx1C2/NQ/5O3rdTig6CXQAqXJsymlHvwapjZ9Wps27flho3pOSU+GickI/jDGw10NFSLkwfD6YTURlw1zAfyMfO3d62PNq0iXPzOG+T7N4hBUUS2086IIEQXA8KFKyj0+tKWl2k1lJpdZBWR9Wugzp1zMLvvHmfkR0S31GPFVkjRwcfnegnZk4eGy4AxAhpb/K7zlMPUTC5rK8ECLFA6/QMKTgg0SKIEmKKHoJYklyLUuqqRo1Vi1aqeUu0bkEtmuv6DVCnjlIKZT6FcGnWsPq3D1WnQCOe5Tlqd4kvOK10vQzUy9Bdu/i8SiyGSIT37uXVq9ynn6RQyDqzvzlYgIN7zf69tGureFHjOWRcYZd0soTCyk6Om1TEIqw6dfC7WeX7pEgToDt3gA6KGIFFpUkaiCIY3reDmrVTGfXlQD6tX0GDL7LHXE/pdSkjQ6emltVuHD0CAE7yfJ3jUyLPjCslCgYlGLTq1XPXruXILnv4zfbEh212URKVkhiKCnHokBwskEMFUlLsfTyF1686rKyhyA54H02huhmqfl2Pq5aqYxIpLHI/mEr+2jlivYsiUsEHHlC9evOqldEbrlQFEd3vdFJWop2XMvo5BOCDoCTmutM/UXayNWI4ACibkm1KTkW9er4qU4CUFJt33y0PXSFArBB+Wh297w+kNUrRKCdHSgF+qga2XYpkKY+0AMeKvDlzAr376I6dVPd+3rKFdtZyfUYfFlblczoJo58nISEAmex1ZsX31OUM3bWrb5ZT2UfEd3TcGbO8TWtEq7KeiwAsosNkhUEBKIuq8hFlQQdgBSFKKusv2SFv5gzZvh2BgDXsfDgRb/Zs311M0DmVR1DiBSDiZ0y8WTMRLbCHDvVTcUcSQaIl3kdToJWGddwDa9RJf05MpDTlb/dmzASgBw9S9VqYBXMkP18SeHthBfoZjqshENGhg2beXKQ1pTMHV9oxgeKsJWZNFllBBh8jROErHyr3j3J/VYWnwy0SxAqY6dPk4EHVpInqe6bkrTfLllMFBz6B9DOsABBglq3g3FV2r/6qRbNjjK1xPpxKHPcFhBTAcIrFKRKnCE6ROMV+yBEUE7cETjHcQnGKxC0Sp0TcYngOEYMMvBicIqnsA6cIwkSmwkZu2ZK7zsybR4A+52wRY+Z8JWU2doIp4ZuwHyX3vppDbNTQc5XScnRUigirs/mHeWW4KyWuhFPUgHPJihuOBOWtW0E7NlPdZnRabyotsfePkhCl5UA+/7iYxKLTB6jS0ONRvIhZsQQH8stCc+SLWos7dap1wfmqdx/dtBP/MF/27EGDBokbljJKvBVEkL37vO+/pYy2uk8fAJWGBd2pUyVaqALJ8dinE7Uuujrw0J/LVqgA1rLlJTffCNcJ3vw7atOu/K8EcJ76u1n4pTp3VOjZp9XRILBSir31P+fpx6isQJwMQ8FK5tVLzA9ZatBA6nem+fBlyVqCC0fU1Bgch36W42qWr5AdG6x+falhw/LT3/eoBeCtW925MykQKsu7IZBsjbyQ4k/5f4k6rWfg+rG8Z6P71yeluNggfmUoAJ41x333NZ3RMnjHuOOMPgA97HzVsJmUHRIi8eCesOdOnUqAPXgwyHIXLih7cULp5xCAu2CeEqHBZ5X6UOU2TxIC3C9myIHdIO3/RryY7j1AZWZWUFZ+Cvs31+ueZ3rffelNnqziGQPibducZ5+G51h33E2t2/DxHAXR9evb518M96ijiqwk8/1cs36dOq2nbtBGli6R/P0/wy6cUAEIADl4kJdkSf0mumdPAOUhugIWKHPwEH82Xdnh0hABSGCNupQsi/gwRItAEFaptex7/oTUdPeVF73ly0CKXCf23CSzdZl18bXWRRcCID5mp3zTXl96MaXWOwK+CGIpKfbeeQ9106hPX7N9A69dS/AZSKAgEigAFmHArMvmvHW6Rz/VqCEB5VHXJESAmTnL5OWIsuIpD46ptl2s/n0JKJ8o98/hA2D17GmPHSeF+9ynn6VIxJ3ykfnyQ2rTJzhuvLIshSOrZsqTQISZWra0hgwjt6RCNIs0BZK9GR/x4iV6yFkwxd733wOlcLyEUeIEICQEwPvue/IiesCgozNDQsR529z/vAQdd80IgGv0ecMoKeWY7UKsMWPsAeeblQtL7nvA/fe/KBgK/ek+anhio0UJwT/X8pqrOJxSPl0s5PnnAsaemKiSwlS/rcn63pREaxAoXjlLiWpYSBRRLGqWLJbkxqpnd6A85FMASKQw9vhjvHcb6XgPfcA8tWoJ4DA47gi4sAiFQ/a996km7fjbmXxorzV2vBo8+GTi6uxvOxCrbRvdtrN4bpnLTawBUcqWvJ+cF15QwbBs2Uh5W0tzgolaBQlcAQB4x07esEa3z9TNm/sqnsWvaiSzZ3f0gQfk+9lkp5TNMO1fKL7xJwaYwAIW3zkrl4X3o9StW1O7joAgnKLPGRLP1RyLFQGLMHO8hslXfp5HFU9rgYhAoIO8OYcP7ENxxKzNFj8RGy90q3kxJOz0dAIAs3qtiuxTPXtLMOgnexUpRApjn30au/kWnj9DgnXKDy9DKzvkfvi2mTmbHDe+BUiFwJAoIZD73vv87SzYISrab577J5eU4DjBeRICSClSiojgxGIfTJWN6+VYBqu2QAp20PvoQ1m5Cp5LpBK0Fyfw/gAAvGwJA8EePQjgDTnuFzNkx05v5VLJ/ZEoCMtCyX4AAoXSolQBUHIweteNOvMM1bmHGnae1a8vOH7kBAAiZRZnec8/KZYduu9h99Pp7rxpeK1z4I+3xyEjR3l5JGAi2bHd/fgTHNhvVizjNYuhNEgffUmkX/UvAgolmdXLim+4XLfrTmcOCY69EcETX81bVUrkDRrRGK9Zreo0pI7tACAUVk2aUfMWesBAstQJ0Boi4nmIxXRqig+jFIiAQVq27Yg+/rAUHrBvu1dffjl17hS7aaP7+j+tjh3UeechnrasCLYgQFgCIdWoERo30t26wRp7TAaEQAKG8+YbsnGtfcsdqkF9hIJI0PXvVbyDvgrk5W6OnNGr8KorOVpiRNivY6liI0bEY2PYMBsjYiIFRTfdVNCxQcm4O7ik2DCzSOyTaYVdW0fOGuTm5LAImyNfwsKGmYVP5u1lz0T//kxBpwaxr772/W3Dpursn5gSeIMGb94iBbusjpnir1wREYlvdCf9IYlX6AsR2DjPv2AWfKE7DbQffAChsL9/WBddrK+/DbtynImP8P79okikwr1xcciFSAXL6jgfEQC6Y0cywqtXltvha94eTeANGmbDBkhMdewYz3+VUblU2Ak//hldBAWQeftd895/qF4z+7FHdEYG+eW0BCIEb7tVnXmZWTrbe/pZcRyhI+6B8E9TV2VlB8f5HK5Kb9mCwnV5fY6v046Pr6o2JfIOmdzNUEFq3eqUGvKPMyN4X34ZnfRXtpOCf56oMzO59DoBAMKQpKTgQ39W7U93Pvmf9+p/gHhV0qm8mRo3kroZyNsiRQksY0qYH+C6JncTajVU9eufSjPEBAVvyVLv0UfgFtvj7tLDhiJ+N0NcISgFElGNmwQee8JKa+y8+pz3yXT/sAaR6ocSVGqqatCI8/fw/gOn0oUTvCVRDRcWYfcuVbce0uueUjuKJCfHfeBecygvMOa2wPU3KP+Q4ArqOH4mru7eTT/8GCnLe+Jhd8FCkBKAqy0C21ZNm9GhPdifD5R55jVMCVNBhw5y4UFKq09Jxzrm86SI87Y599zNeRvsEdda4/9YyT1wFd4q9tChwTvvMyUF3oP38qqVpfDs6hARUUZ9NlHZs8/3h8uXj9cU1bwA4hbIwUMSLVD164s+7pAdsxEAMDt3Ru+718tZbA8cFvzzgyoUPv6pGn70WI8eExg73uzNjd57v/lpE/zS86rPXQGQng4fmp+wBHENC6Csm1xcrGIllFa7mi8g8N7dsXvu4eXzdI8h9uOPUe1alaAhj/gSkQIppexbb7Wv+r1sXu7+6U7J2wZSQqUGcBVYANWuA4AKCqqNvzgh1fgKKLVMolEWlqTk6mlN2bUrev8DZuk83fmM4LPPUJXy4wIEAsF77rGHj/bW/hC7/27ZudsPYlSVDQoEIDBFhUhYUqaGBUBlYbjCQt9/OalO+ydLIH7Zgtm5M3r3Pbzwc9W+Z+ipp3XjJlW7GIEACCUlBR95yL7gWrPk2+i9E8zOHYif8Qguf6nD8VtKSQIUJTIlU+MrIG6fWMlJgKGjQl2VUtw/FhIizs117rrLLP1KdRkUnPScatMaqHJKxIe1UUpq8JGJevhVnPVNbPwfOTeXqDSmdHLahCNFFEcjJYoSYAX5QYDkFCEbBw6d3EyLV+V5K1c6f7zN+3GePu3M4KTndKs2p8pKaq3wIxP1BZebVd/Gxo/z1qwRH+N+knO6uFhIKDUlcSitmheAP1t0aqoK1zW7dlQ4VrIiiQ9cFghICO6cr51xt3s/rdSDLw5Pel4d+7DTKvAiQqmpoUce1aNuMhuWxf74B2/+fP9ujjI37ZjsAbJrJ4SoXnppdr7mKSF+AAFUP0Nq16G8rXzwmG6koLQQMBbz/v2qc9947NscuOw3oWeeooz61Tfgy3Pi3/eSWiv00F/s396FvbnOhNu9yZOF2ffRjrNJCTNv3AwrqBo39fMMCaEaj6/GyTNFN91UkNnK/fbbYz1i/Gjz1tzicXdEMptHenaMvvwKOw6LcI0GflnYiBhjnLffKejdPZLZtOjBh909u44fXza7dkWGDC48c5C3azcnIhItIiKJEgCLxN55p6Bjg+I77zbGsIhhn+LDwSJcEo19ODVy7tkFHRsVnneOO/ur0n7WfGeZ4zA6Z8HCwvOHRjrUL7rkYm/uPFP6vjLuDLNhwyKxD6cWdGxUfOcESUwmwKdEJmR27y0eek6kW/vYBx/GR7z0Y4qL3LlzC387tiCzaUGX1sX3/MndutUkjpVyZES8vB1Fd0+IZDYt6NE2et993uo1Pntlfxo/m3TB0MIux1vBNUI1fYlPmWaDAOR+8XnsgTuVClojr6Zzh6j0dOzbx9nZ3tdfmTWL4Rbp9r3tsbfp4cOgNVhIVZLRrUmuREQESsFzzKdfOP9+yWz5UddqrAedp4aepzt3ptRUGM+sWe09P8lbs8i++LeBJx4tO44hEZQ4AQAsrOB9ONV54VnamwO7NuyQuEVwiilYS7U/jS673L5gmH8DgQKj7H6UBJNv+hBgdu32pkwx06bw9myiIOo0pLR0xErMni3kGX3mhYFHH0FGPStxRmhiBeDjlomweZOZ8zWvXMlFhZRaW7dvS716W127cnKS8h9LKPascv6EUWoy797jLVrE8xd6m7Kp8CBUSDduTOePsC+5EOFkYdZVr449eUqgAETiN6D5F+IRIJ7xT6qLTyn/NBBIgtF/lRCXIoFJUHbhkYkUqJgrCpSaSnag/JVoieMuUQLwqbRp8a9FqLiUj3fqwM9BIodZkiNDdWWDkmj2EiuAX+mE9PNd5vkrVUq/CuAXpl8F8AvTrwL4helXAfzC9P8Ae7+Ab44Zr0QAAAAASUVORK5CYII=" alt=""><h4>Figure 3 - Approche 2D inappropriée</h4></div></div><div class="article_item" id="summary"><h1>Sommaire</h1><div><div class="somH2"><a href="#section_title0">Définition</a></div><div class="somH2"><a href="#section_title2">Un autre défi</a></div><div class="somH3"><a href="#section_title3">Vers une autre approche ?</a></div><div class="somH2"><a href="#section_title4">Conclusion</a></div></div></div></div><div class="section_container"><h2 id="section_title4" class="section_title">Conclusion</h2><div class="article_item">Si aucune définition pertinente n\'a encore été donnée, il n\'est nul doute<br>que nous parviendrons à  en extraire le concept.<br><br>Et peut-être résoudre : 2 + 2 + 2 + 2 ?<br></div></div>'
	);