# Data processing

0. Rename data files
   1. PACIENTI SUSPECTI SCJUA, UPU, SAJ 1 SORTAT_21.07.2020.xlsx    -> 2020-07-27_PACIENTI.xlsx
   2. PACIENTI-SUSPECTI-SCJUA-UPU-SAJ-2.xlsx                        -> 2020-05-15_PACIENTI.xlsx

1. Rename each column name with a slugified version

    ```python
    {
        "NR CRT": "NR_CRT",
        "SCJUA / UPU / SAJ": "SCJUA_UPU_SAJ",
        "SEX": "SEX",
        "VARSTA": "VARSTA",
        "DATA DEBUT SIMPTOME": "DATA_DEBUT_SIMPTOME",
        "SIMPTOME LA DEBUT": "SIMPTOME_LA_DEBUT",
        "DATA INTERNARII": "DATA_INTERNARII",
        "LOCUL INTERNARII": "LOCUL_INTERNARII",
        "SIMPTOME": "SIMPTOME",
        "SEMNE SI DIAGNOSTIC DE INTERNARE": "SEMNE_SI_DIAGNOSTIC_DE_INTERNARE",
        "ISTORICUL DE CALATORIE SI PERIOADA": "ISTORICUL_DE_CALATORIE_SI_PERIOADA",
        "MOD CALATORIE AVION, MASINA, AUTOCAR ETC.": "MOD_CALATORIE_AVION_MASINA_AUTOCAR_ETC",
        "CONTACT CU UN CAZ CONFIRMAT": "CONTACT_CU_UN_CAZ_CONFIRMAT",
        "TESTARE NR.": "TESTARE_NR",
        "1                                     DATA TESTARE ": "1_DATA_TESTARE",
        "1             REZULTAT TESTARE ": "1_REZULTAT_TESTARE",
        "TESTARE NR..1": "TESTARE_NR_1",
        "2                                     DATA RETESTARE ": "2_DATA_RETESTARE",
        "2             REZULTAT RETESTARE ": "2_REZULTAT_RETESTARE",
        "TESTARE NR..2": "TESTARE_NR_2",
        "3                                     DATA RETESTARE ": "3_DATA_RETESTARE",
        "3             REZULTAT RETESTARE ": "3_REZULTAT_RETESTARE",
        "TESTARE NR..3": "TESTARE_NR_3",
        "4                                     DATA RETESTARE ": "4_DATA_RETESTARE",
        "4             REZULTAT RETESTARE ": "4_REZULTAT_RETESTARE",
        "TESTARE NR..4": "TESTARE_NR_4",
        "5                                     DATA RETESTARE ": "5_DATA_RETESTARE",
        "5             REZULTAT RETESTARE ": "5_REZULTAT_RETESTARE",
        "TESTARE NR..5": "TESTARE_NR_5",
        "6                                     DATA RETESTARE ": "6_DATA_RETESTARE",
        "6             REZULTAT RETESTARE ": "6_REZULTAT_RETESTARE",
        "TESTARE NR..6": "TESTARE_NR_6",
        "7                                     DATA RETESTARE ": "7_DATA_RETESTARE",
        "7             REZULTAT RETESTARE ": "7_REZULTAT_RETESTARE",
        "TESTARE NR..7": "TESTARE_NR_7",
        "8                                     DATA RETESTARE ": "8_DATA_RETESTARE",
        "8             REZULTAT RETESTARE ": "8_REZULTAT_RETESTARE",
        "DATA DECES": "DATA_DECES",
        "MEDIC FAMILIE": "MEDIC_FAMILIE",
    }
    ```

2. Convert all values to string and make them uppecase

3. Determine DATETIME type columns and convert to default format YYYY-MM-DD

    - DATETIME type columns:

    ```python
    ["DATA_DEBUT_SIMPTOME", "DATA_INTERNARII", "1_DATA_TESTARE", "2_DATA_RETESTARE", "3_DATA_RETESTARE", "4_DATA_RETESTARE", "5_DATA_RETESTARE", "6_DATA_RETESTARE", "7_DATA_RETESTARE", "8_DATA_RETESTARE", "DATA_DECES"]
    ```

4. Anonymise personal information that could lead to identifing the individual
   1. to be written

5. Remove incomplete data
   1. to be written

6. Clean the words
   1. to be written
