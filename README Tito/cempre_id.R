cempre = cempre %>%
  mutate(id_code = case_when(unidade_de_medida == "Unidades" & variavel == "Número de empresas e outras organizações"
                                          & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117897 ~ "1",
                                          unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado total" &
                                            classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117897 ~ "2",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado assalariado" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117897 ~ "3",
                        unidade_de_medida == "Mil Reais" & variavel == "Salários e outras remunerações" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117897 ~ "4",
                        unidade_de_medida == "Unidades" & variavel == "Número de empresas e outras organizações" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 116830 ~ "5",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado total" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 116830 ~ "6",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado assalariado" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 116830 ~ "7",
                        unidade_de_medida == "Mil Reais" & variavel == "Salários e outras remunerações" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 116830 ~ "8",
                        unidade_de_medida == "Unidades" & variavel == "Número de empresas e outras organizações" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 116880 ~ "9",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado total" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 116880 ~ "10",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado assalariado" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 116880 ~ "11",
                        unidade_de_medida == "Mil Reais" & variavel == "Salários e outras remunerações" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 116880 ~ "12",
                        unidade_de_medida == "Unidades" & variavel == "Número de empresas e outras organizações" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 116910 ~ "13",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado total" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 116910 ~ "14",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado assalariado" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 116910 ~ "15",
                        unidade_de_medida == "Mil Reais" & variavel == "Salários e outras remunerações" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 116910 ~ "16",
                        unidade_de_medida == "Unidades" & variavel == "Número de empresas e outras organizações" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117296 ~ "17",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado total" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117296 ~ "18",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado assalariado" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117296 ~ "19",
                        unidade_de_medida == "Mil Reais" & variavel == "Salários e outras remunerações" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117296 ~ "20",
                        unidade_de_medida == "Unidades" & variavel == "Número de empresas e outras organizações" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117307 ~ "21",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado total" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117307 ~ "22",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado assalariado" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117307 ~ "23",
                        unidade_de_medida == "Mil Reais" & variavel == "Salários e outras remunerações" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117307 ~ "24",
                        unidade_de_medida == "Unidades" & variavel == "Número de empresas e outras organizações" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117329 ~ "25",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado total" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117329 ~ "26",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado assalariado" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117329 ~ "27",
                        unidade_de_medida == "Mil Reais" & variavel == "Salários e outras remunerações" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117329 ~ "28",
                        unidade_de_medida == "Unidades" & variavel == "Número de empresas e outras organizações" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117363 ~ "29",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado total" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117363 ~ "30",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado assalariado" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117363 ~ "31",
                        unidade_de_medida == "Mil Reais" & variavel == "Salários e outras remunerações" &
                          classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117363 ~ "32",
                        unidade_de_medida == "Unidades" & variavel == "Número de empresas e outras organizações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117484 ~ "33",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado total"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117484 ~ "34",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado assalariado"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117484 ~ "35",
                        unidade_de_medida == "Mil Reais" & variavel == "Salários e outras remunerações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117484 ~ "36",
                        unidade_de_medida == "Unidades" & variavel == "Número de empresas e outras organizações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117543 ~ "37",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado total"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117543 ~ "38",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado assalariado"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117543 ~ "39",
                        unidade_de_medida == "Mil Reais" & variavel == "Salários e outras remunerações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117543 ~ "40",
                        unidade_de_medida == "Unidades" & variavel == "Número de empresas e outras organizações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117555 ~ "41",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado total"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117555 ~ "42",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado assalariado"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117555 ~ "43",
                        unidade_de_medida == "Mil Reais" & variavel == "Salários e outras remunerações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117555 ~ "44",
                        unidade_de_medida == "Unidades" & variavel == "Número de empresas e outras organizações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117608 ~ "45",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado total"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117608 ~ "46",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado assalariado"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117608 ~ "47",
                        unidade_de_medida == "Mil Reais" & variavel == "Salários e outras remunerações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117608 ~ "48",
                        unidade_de_medida == "Unidades" & variavel == "Número de empresas e outras organizações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117666 ~ "49",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado total"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117666 ~ "50",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado assalariado"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117666 ~ "51",
                        unidade_de_medida == "Mil Reais" & variavel == "Salários e outras remunerações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117666 ~ "52",
                        unidade_de_medida == "Unidades" & variavel == "Número de empresas e outras organizações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117673 ~ "53",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado total"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117673 ~ "54",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado assalariado"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117673 ~ "55",
                        unidade_de_medida == "Mil Reais" & variavel == "Salários e outras remunerações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117673 ~ "56",
                        unidade_de_medida == "Unidades" & variavel == "Número de empresas e outras organizações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117714 ~ "57",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado total"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117714 ~ "58",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado assalariado"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117714 ~ "59",
                        unidade_de_medida == "Mil Reais" & variavel == "Salários e outras remunerações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117714 ~ "60",
                        unidade_de_medida == "Unidades" & variavel == "Número de empresas e outras organizações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117774 ~ "61",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado total"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117774 ~ "62",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado assalariado"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117774 ~ "63",
                        unidade_de_medida == "Mil Reais" & variavel == "Salários e outras remunerações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117774 ~ "64",
                        unidade_de_medida == "Unidades" & variavel == "Número de empresas e outras organizações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117788 ~ "65",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado total"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117788 ~ "66",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado assalariado"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117788 ~ "67",
                        unidade_de_medida == "Mil Reais" & variavel == "Salários e outras remunerações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117788 ~ "68",
                        unidade_de_medida == "Unidades" & variavel == "Número de empresas e outras organizações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117810 ~ "69",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado total"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117810 ~ "70",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado assalariado"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117810 ~ "71",
                        unidade_de_medida == "Mil Reais" & variavel == "Salários e outras remunerações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117810 ~ "72",
                        unidade_de_medida == "Unidades" & variavel == "Número de empresas e outras organizações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117838 ~ "73",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado total"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117838 ~ "74",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado assalariado"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117838 ~ "75",
                        unidade_de_medida == "Mil Reais" & variavel == "Salários e outras remunerações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117838 ~ "76",
                        unidade_de_medida == "Unidades" & variavel == "Número de empresas e outras organizações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117861 ~ "77",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado total"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117861 ~ "78",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado assalariado"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117861 ~ "79",
                        unidade_de_medida == "Mil Reais" & variavel == "Salários e outras remunerações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117861 ~ "80",
                        unidade_de_medida == "Unidades" & variavel == "Número de empresas e outras organizações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117888 ~ "81",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado total"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117888 ~ "82",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado assalariado"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117888 ~ "83",
                        unidade_de_medida == "Mil Reais" & variavel == "Salários e outras remunerações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117888 ~ "84",
                        unidade_de_medida == "Unidades" & variavel == "Número de empresas e outras organizações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117892 ~ "85",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado total"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117892 ~ "86",
                        unidade_de_medida == "Pessoas" & variavel == "Pessoal ocupado assalariado"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117892 ~ "87",
                        unidade_de_medida == "Mil Reais" & variavel == "Salários e outras remunerações"
                        & classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo == 117892 ~ "88"
                        ))




