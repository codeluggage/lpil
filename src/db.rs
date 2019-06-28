use crate::graphql::{Feedback, Mood, Survey};
use chrono::prelude::*;

pub fn all_surveys() -> Vec<Survey> {
    vec![
        Survey {
            title: "The Iron Throne".to_string(),
            description: Some("How do you feel about the final GoT episode?".to_string()),
            tags: vec!["Game of Thrones".to_string(), "Finale".to_string()],
            colour: Some("#ffccbb".to_string()),
            id: 1,
            date: Utc::now(),
            feedback: vec![
                Feedback { mood: Mood::Happy },
                Feedback { mood: Mood::Happy },
                Feedback { mood: Mood::Sad },
                Feedback { mood: Mood::Sad },
                Feedback { mood: Mood::Meh },
                Feedback { mood: Mood::Happy },
            ],
        },
        Survey {
            title: "Did you see that ludicrous display last night?".to_string(),
            description: Some(
                "What was Wenger thinking sending Walcott on that early?".to_string(),
            ),
            tags: vec![
                "football".to_string(),
                "sport".to_string(),
                "totally-normal".to_string(),
            ],
            colour: Some("#99ccee".to_string()),
            id: 3,
            date: Utc::now(),
            feedback: vec![
                Feedback { mood: Mood::Meh },
                Feedback { mood: Mood::Happy },
                Feedback { mood: Mood::Sad },
                Feedback { mood: Mood::Happy },
                Feedback { mood: Mood::Happy },
                Feedback { mood: Mood::Sad },
                Feedback { mood: Mood::Happy },
                Feedback { mood: Mood::Sad },
            ],
        },
        Survey {
            title: "Rate my cat".to_string(),
            description: Some("Their name is fluffy".to_string()),
            tags: vec!["cat".to_string(), "cute".to_string()],
            colour: Some("#99ccee".to_string()),
            id: 4,
            date: Utc::now(),
            feedback: vec![
                Feedback { mood: Mood::Happy },
                Feedback { mood: Mood::Happy },
                Feedback { mood: Mood::Happy },
            ],
        },
        Survey {
            title: "Election results".to_string(),
            description: None,
            tags: vec!["politics".to_string()],
            colour: None,
            id: 5,
            date: Utc::now(),
            feedback: vec![
                Feedback { mood: Mood::Meh },
                Feedback { mood: Mood::Sad },
                Feedback { mood: Mood::Happy },
                Feedback { mood: Mood::Sad },
                Feedback { mood: Mood::Happy },
                Feedback { mood: Mood::Happy },
            ],
        },
        Survey {
            title: "Conference call audio".to_string(),
            description: Some(
                "Was the audio quality good for the last NDAP remote meeting?".to_string(),
            ),
            tags: vec!["ndap".to_string(), "av".to_string(), "meeting".to_string()],
            colour: None,
            id: 6,
            date: Utc::now(),
            feedback: vec![
                Feedback { mood: Mood::Meh },
                Feedback { mood: Mood::Meh },
                Feedback { mood: Mood::Happy },
            ],
        },
    ]
}
