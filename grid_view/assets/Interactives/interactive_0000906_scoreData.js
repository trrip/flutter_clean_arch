/**
 * Created by BBI_2 on 1/18/2016.
 */

var scoreData = [
    {
        "boxId": "0",
        "toolIdentifier": "interactive_0000906",
        "toolName": "Interactive Score",
        "toolVersion": "1.0",
        "date":"20161109",
        "headerText":""
    },
	{
	    "boxId": "1",
	    "questionText": "KPS",
	    "maxValue": "Max. 1.5",
	    "options": [
			{
			    "text": "< 50",
			    "value": 0
			},
			{
			    "text": "60",
			    "value": 0.5
			},
			{
			    "text": "70-80",
			    "value": 1
			},
			{
			    "text": "90-100",
			    "value": 1.5
			}
	    ]
	},
	{
	    "boxId": "2",
	    "questionText": "Subtype",
	    "maxValue": "Max. 2",
	    "options": [
			{
			    "text": "Basal",
			    "value": 0
			},
			{
			    "text": "LumA",
			    "value": 1
			},
			{
			    "text": "HER2",
			    "value": 1.5
			},
			{
			    "text": "LumB",
			    "value": 2
			}
	    ]
	},
	{
	    "boxId": "3",
	    "questionText": "Age, years",
	    "maxValue": "Max. 0.5",
	    "options": [
			{
			    "text": "> 60",
			    "value": 0
			},
			{
			    "text": "< 60",
			    "value": 0.5
			}
	    ]
	},
	{
	    "boxId": "997",
	    "boxType": ResultBoxTypes.RESULT_SCORE_BOX,
	    "scoreInfotext": "Score (min. 0 - max. 4)"
	},
	{
	    "boxId": "998",
	    "boxType": BoxTypes.FOOTER,
	    "hasFootnote": true,
	    "hasAbbreviation": true,
	    "staticImageName": "Abb_2",
	    "referenceText": "Subtype: Basal: triple negative; LumA: ER/PR positive, HER2 negative; LumB: triple positive; HER2: ER/PR negative, HER2 positive; <br>Sperduto PW, J Clin Oncol 2012, 30:419-425</br>",
	    "abbreviationText": "ECM, extracranial metastases; ER, estrogen receptor; HER2, human epidermal growth factor receptor 2; KPS, Karnofsky performance score; LumA, luminal A; LumB, luminal B; PR, progesterone receptor.",
	    "extraButtons": [
			{
			    buttonRow: [
					
					{
					    "text": "Abk&uuml;rzungen und<br/>Fu&#223;noten",
					    "buttonId": FooterButtons.REF_BUTTON
					},
					{
					    "text": "<a class='more-info-link' href='ref_DEAS5076_23.2.0.0.html'>Für weitere Details, klicken Sie hier</a>",
					    "buttonId": FooterButtons.MORE_INFO_BUTTON
					}
			    ]
			},
			{
			    buttonRow: [
					{
					    "text": "Rücksetzen",
					    "buttonId": FooterButtons.RESET_BUTTON
					}
			    ]
			}
	    ]
	},
	{
	    "boxId": "999",
	    "result": [
			{
			    "value": "1",
			    "operator": "<=",
			    "inference": "Median survival by GPA: 3.4 months"
			},
			{
			    "value": "2",
			    "operator": "<=",
			    "inference": "Median survival by GPA: 7.7 months"
			},
			{
			    "value": "3",
			    "operator": "<=",
			    "inference": "Median survival by GPA: 15.1 months"
			},
			{
			    "value": "4",
			    "operator": "<=",
			    "inference": "Median survival by GPA: 25.3 months"
			}
	    ]
	}
];
