## -------- Función process_tweet
# Prueba función process_tweet
tweet.test = "En respuesta a 
@GatitosVsDesig
Por ejemplo, aquí podemos ver información sobre la muy estrecha relación entre riqueza de la familia donde se nace y la obtenida en la vida (de origen y riqueza de destino, en términos académicos): https://twitter.com/psolisaqui/status/1071440956493361154?s=21… 
@psolisaqui https://twitter.com/psolisaqui/status/1071440956493361154?s=21
  "
process_tweet(tweet.test, stopwords)

## -------- Función build_freqs

## -------- Función sigmoid

## -------- Función gradientDescent

tmp_X = matrix(
  c(1, 8.34044009e+02, 1.44064899e+03,
    1, 2.28749635e-01, 6.04665145e+02,
    1, 2.93511782e+02, 1.84677190e+02,
    1, 3.72520423e+02, 6.91121454e+02,
    1, 7.93534948e+02, 1.07763347e+03,
    1, 8.38389029e+02, 1.37043900e+03,
    1, 4.08904499e+02, 1.75623487e+03,
    1, 5.47751864e+01, 1.34093502e+03,
    1, 8.34609605e+02, 1.11737966e+03,
    1, 2.80773877e+02, 3.96202978e+02),
  nrow = 10, byrow = TRUE)

tmp_Y = c(1, 1, 0, 1, 1, 1, 0, 0, 0, 1)

gradientDescent(tmp_X, tmp_Y, rep(0, 3), 1e-8, 700)

## -------- Función extract_features
extract_features(tweet.test, freqs, stopwords)
extract_features('#FollowFriday @France_Inte @PKuchly57 @Milipol_Paris for being top engaged members in my community this week :)', freqs, stopwords)
extract_features('blorb bleeeeb bloooob', freqs, stopwords)