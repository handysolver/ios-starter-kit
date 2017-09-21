//
//
//
//
//import RealmSwift
//
//
//class RealmManager {
//    
//    
//    
//    
//    let config = Realm.Configuration(
//        // Set the new schema version. This must be greater than the previously used
//        // version (if you've never set a schema version before, the version is 0).
//        schemaVersion: 1,
//        
//        // Set the block which will be called automatically when opening a Realm with
//        // a schema version lower than the one set above
//        migrationBlock: { migration, oldSchemaVersion in
//            // We haven’t migrated anything yet, so oldSchemaVersion == 0
//            if (oldSchemaVersion < 1) {
//                // Nothing to do!
//                // Realm will automatically detect new properties and removed properties
//                // And will update the schema on disk automatically
//            }
//    })
//    
//
//    
//    var realm : Realm?
//
//    
//    static let instance = RealmManager()
//    
//    init() {
//    
//    // Tell Realm to use this new configuration object for the default Realm
//      Realm.Configuration.defaultConfiguration = config
//
//       realm = try! Realm()
//        
//    }
//   
//    
//    
//    func clearDatabase()
//    {
//        try! realm?.write {
//            realm?.deleteAll()
//        }
//        
//    }
//    
//    
//    
//    
//    
//    func getAllUsers() -> Results<Users>
//    {
//        // Fetch table data
//        return  realm!.objects(Users.self)
//        
//    }
//    
//    
//    func getAllTask() -> Results<TaskTable>
//    {
//        // Fetch table data
//        return  realm!.objects(TaskTable.self)
//        
//    }
//    
//    
//    
//    func addUser(name:String,age:Int) {
//            let users = Users()
//            users.name = name
//            users.age = age
//            users.id = String(describing: Date()).trimmingCharacters(in: .whitespaces)
//            
//            try! realm?.write {
//                realm?.add(users)
//                print("Value Saved")
//                showSuccessBanner(message: "Added!!")
//            }
//            
//        
//        
//    }
//    
//    
// 
//    
//    
//    func deleteObject(object: Object) {
//        
//        realm?.beginWrite()
//        realm?.delete(object)
//        try! realm?.commitWrite()
//        showErrorBanner(message: "Removed!!")
//        
//    }
//    
//    
//
//    
//    
//    func addTask(taskName:String , questions: [QuestionsData],videoPlayDuration:String , videoPauseFrequency:String , attempts:String , passingPercentage:String) {
//  
//            
//            let taskTable = TaskTable()
//            
//            for items in questions {
//                
//                let task =   QuestionModelRealm()
//                task.question = items.question
//                task.correct = items.correct
//                task.option3 = items.option3
//                task.id = items.id
//                task.option1 = items.option1
//                task.option2 = items.option2
//                task.type = items.type
//                task.subject = items.subject
//                taskTable.taskList.append(task)
//            }
//            
//            taskTable.taskName = taskName
//            taskTable.id = String(describing: Date()).trimmingCharacters(in: .whitespaces)
//            taskTable.videoPlayDuration = videoPlayDuration
//            taskTable.videoPauseFrequency = videoPauseFrequency
//            taskTable.attempts = attempts
//            taskTable.passingPercentage = passingPercentage
//            
//            try! realm?.write {
//                realm?.add(taskTable)
//                print("Value Saved")
//                showSuccessBanner(message: "Task Added!!")
//                addTaskViewController.onTaskSaved()
//            }
//        
//        
//    }
//    
//    
//    func updateTask( id:String , taskName:String , questions: [QuestionsData],videoPlayDuration:String , videoPauseFrequency:String , attempts:String , passingPercentage:String) {
//        
//        
//        if let Task  =  realm?.objects(TaskTable.self).filter("id == %@" , id).first {
//            
//            
//            print(questions.count)
//            
//            try! realm?.write {
//                
//                
//                 Task.taskList.removeAll()
//                
//                
//                for items in questions {
//                    
//                    let task =   QuestionModelRealm()
//                    task.question = items.question
//                    task.correct = items.correct
//                    task.option3 = items.option3
//                    task.id = items.id
//                    task.option1 = items.option1
//                    task.option2 = items.option2
//                    task.type = items.type
//                    task.subject = items.subject
//                    Task.taskList.append(task)
//                    
//                }
//                
//                
//                
//                Task.taskName = taskName
//                Task.videoPlayDuration = videoPlayDuration
//                Task.videoPauseFrequency = videoPauseFrequency
//                Task.attempts = attempts
//                Task.passingPercentage = passingPercentage
//                Task.id = id
//                
//                realm?.add(Task)
//                
//                print("Value Saved")
//                showSuccessBanner(message: "Task Updated!!")
//                updateTaskViewController.onTaskSaved()
//            }
//            
//        }
//        
//    
//   }
//    
//    
//
//    func saveAttemptTable(id:String , userId: String , taskId: String ,isPass: Bool ,percentage: Int) {
//        
//        let attemptTable = AttemptTable()
//        attemptTable.id = id
//        attemptTable.userId = userId
//        attemptTable.taskId = taskId
//        attemptTable.isPass = isPass
//        attemptTable.percentage = percentage
//        attemptTable.attemptDate = Foundation.Date().dashedStringFromDate()
//
//        
//        try! realm?.write {
//            realm?.add(attemptTable)
//            print("Value Saved")
//            showSuccessBanner(message: "Attempt Saved!!")
//        }
//        
//    }
//
//    
//    
//    func saveStatQuestion(attemptId: String , responseTime: Int ,attemptsTaken: Int ,isCorrect: Bool , taskQuestionIndex: Int)  {
//        
//        let questionTable = SateQuestionTable()
//        questionTable.id = String(describing: Date()).trimmingCharacters(in: .whitespaces)
//        questionTable.attemptId = attemptId
//        questionTable.responseTime = responseTime
//        questionTable.attemptsTaken = attemptsTaken
//        questionTable.isCorrect = isCorrect
//        questionTable.taskQuestionIndex = taskQuestionIndex
//        
//        
//        try! realm?.write {
//            realm?.add(questionTable)
//            print("Value Saved")
//        }
//        
//    }
//    
//
//    
//    
//    
//    
//    func getStatistics(statisticsId:String) -> Results <AttemptTable>  {
//        
//         return  realm!.objects(AttemptTable.self).filter("userId == %@" , statisticsId)
//      
//    }
//    
//    
// 
//
//}
//
//
