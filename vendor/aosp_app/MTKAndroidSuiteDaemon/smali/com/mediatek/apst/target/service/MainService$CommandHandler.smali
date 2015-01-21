.class Lcom/mediatek/apst/target/service/MainService$CommandHandler;
.super Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;
.source "MainService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/apst/target/service/MainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommandHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/apst/target/service/MainService;


# direct methods
.method public constructor <init>(Lcom/mediatek/apst/target/service/MainService;I)V
    .locals 0
    .parameter
    .parameter "queueCapacity"

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    .line 1166
    invoke-direct {p0, p2}, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;-><init>(I)V

    .line 1167
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1171
    const-string v0, "MainService$CommandHandler"

    return-object v0
.end method

.method public handle(Lcom/mediatek/apst/util/command/BaseCommand;)V
    .locals 8
    .parameter "cmd"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1176
    if-nez p1, :cond_1

    .line 1177
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mPrepareToStop:Z
    invoke-static {v1}, Lcom/mediatek/apst/target/service/MainService;->access$900(Lcom/mediatek/apst/target/service/MainService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1180
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMsgHandler:Lcom/mediatek/apst/target/service/MainService$MainHandler;
    invoke-static {v1}, Lcom/mediatek/apst/target/service/MainService;->access$500(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/MainService$MainHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1181
    invoke-virtual {p0}, Lcom/mediatek/apst/target/service/BlockingCommandHandlingThread;->terminate()V

    .line 1221
    :cond_0
    :goto_0
    return-void

    .line 1186
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "handle"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FeatureID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getFeatureID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getToken()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 1189
    const/4 v0, 0x0

    .line 1190
    .local v0, handled:Z
    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getFeatureID()I

    move-result v1

    if-ne v6, v1, :cond_2

    .line 1191
    invoke-virtual {p0, p1}, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->handleMainFrameFeatures(Lcom/mediatek/apst/util/command/BaseCommand;)Z

    move-result v0

    .line 1215
    :goto_1
    if-nez v0, :cond_0

    .line 1216
    invoke-virtual {p0}, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "handle"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v7

    const-string v4, "): Unsupported command."

    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 1218
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    new-instance v2, Lcom/mediatek/apst/util/command/UnsupportedRequestResponse;

    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getFeatureID()I

    move-result v3

    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getToken()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/mediatek/apst/util/command/UnsupportedRequestResponse;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto :goto_0

    .line 1192
    :cond_2
    const/16 v1, 0x10

    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getFeatureID()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1193
    invoke-virtual {p0, p1}, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->handleContactsFeatures(Lcom/mediatek/apst/util/command/BaseCommand;)Z

    move-result v0

    goto :goto_1

    .line 1194
    :cond_3
    const/16 v1, 0x100

    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getFeatureID()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 1195
    invoke-virtual {p0, p1}, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->handleMessageFeatures(Lcom/mediatek/apst/util/command/BaseCommand;)Z

    move-result v0

    goto :goto_1

    .line 1196
    :cond_4
    const/16 v1, 0x1000

    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getFeatureID()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 1197
    invoke-virtual {p0, p1}, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->handleApplicationFeatures(Lcom/mediatek/apst/util/command/BaseCommand;)Z

    move-result v0

    goto :goto_1

    .line 1198
    :cond_5
    const/high16 v1, 0x1

    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getFeatureID()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 1199
    invoke-virtual {p0, p1}, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->handleSyncFeatures(Lcom/mediatek/apst/util/command/BaseCommand;)Z

    move-result v0

    goto :goto_1

    .line 1200
    :cond_6
    const/high16 v1, 0x10

    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getFeatureID()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 1201
    invoke-virtual {p0, p1}, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->handleMediaFeatures(Lcom/mediatek/apst/util/command/BaseCommand;)Z

    move-result v0

    goto :goto_1

    .line 1202
    :cond_7
    const/high16 v1, 0x100

    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getFeatureID()I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 1203
    invoke-virtual {p0, p1}, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->handleCalendarFeatures(Lcom/mediatek/apst/util/command/BaseCommand;)Z

    move-result v0

    goto :goto_1

    .line 1204
    :cond_8
    const v1, 0x11000

    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getFeatureID()I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 1205
    invoke-virtual {p0, p1}, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->handleCalendarSyncFeatures(Lcom/mediatek/apst/util/command/BaseCommand;)Z

    move-result v0

    goto :goto_1

    .line 1206
    :cond_9
    const/high16 v1, 0x110

    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getFeatureID()I

    move-result v2

    if-ne v1, v2, :cond_a

    .line 1207
    invoke-virtual {p0, p1}, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->handleBookmarkFeatures(Lcom/mediatek/apst/util/command/BaseCommand;)Z

    move-result v0

    goto/16 :goto_1

    .line 1208
    :cond_a
    const/high16 v1, 0x111

    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getFeatureID()I

    move-result v2

    if-ne v1, v2, :cond_b

    .line 1209
    invoke-virtual {p0, p1}, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->handleBackupFeatures(Lcom/mediatek/apst/util/command/BaseCommand;)Z

    move-result v0

    goto/16 :goto_1

    .line 1211
    :cond_b
    invoke-virtual {p0}, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "handle"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v7

    const-string v4, "Unsupported feature."

    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public handleApplicationFeatures(Lcom/mediatek/apst/util/command/BaseCommand;)Z
    .locals 6
    .parameter "cmd"

    .prologue
    .line 2092
    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getToken()I

    move-result v0

    .line 2093
    .local v0, reqToken:I
    instance-of v1, p1, Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoReq;

    if-eqz v1, :cond_0

    .line 2094
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mApplicationProxy:Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;
    invoke-static {v1}, Lcom/mediatek/apst/target/service/MainService;->access$300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;

    move-result-object v2

    new-instance v3, Lcom/mediatek/apst/target/service/MainService$CommandHandler$12;

    invoke-direct {v3, p0, v0}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$12;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object v1, p1

    check-cast v1, Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoReq;

    invoke-virtual {v1}, Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoReq;->getDestIconWidth()I

    move-result v1

    check-cast p1, Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoReq;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoReq;->getDestIconHeight()I

    move-result v5

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;->fastGetAllApplications(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;II)V

    .line 2115
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 2113
    .restart local p1
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleBackupFeatures(Lcom/mediatek/apst/util/command/BaseCommand;)Z
    .locals 31
    .parameter "cmd"

    .prologue
    .line 2776
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getToken()I

    move-result v17

    .line 2777
    .local v17, reqToken:I
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/GetAllGroupsForBackupReq;

    move/from16 v26, v0

    if-eqz v26, :cond_1

    .line 2778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v26

    new-instance v27, Lcom/mediatek/apst/target/service/MainService$CommandHandler$29;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$29;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->asyncGetAllGroups(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 3233
    .end local p1
    :cond_0
    :goto_0
    const/16 v26, 0x1

    :goto_1
    return v26

    .line 2793
    .restart local p1
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/GetAllContsForBackupReq;

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 2794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v26

    new-instance v27, Lcom/mediatek/apst/target/service/MainService$CommandHandler$30;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$30;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v26 .. v30}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->asyncGetAllRawContactsForBackup(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0

    .line 2811
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/GetAllContsDataForBackupReq;

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 2812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v26

    check-cast p1, Lcom/mediatek/apst/util/command/backup/GetAllContsDataForBackupReq;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/command/backup/GetAllContsDataForBackupReq;->getRequestingDataTypes()Ljava/util/ArrayList;

    move-result-object v27

    new-instance v28, Lcom/mediatek/apst/target/service/MainService$CommandHandler$31;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$31;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v26 .. v29}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->asyncGetAllContactData(Ljava/util/List;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 2831
    .restart local p1
    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/GetPhoneListReq;

    move/from16 v26, v0

    if-eqz v26, :cond_4

    .line 2832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v26

    new-instance v27, Lcom/mediatek/apst/target/service/MainService$CommandHandler$32;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$32;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->asyncGetPhoneList(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 2846
    :cond_4
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/DelAllContactsReq;

    move/from16 v26, v0

    if-eqz v26, :cond_5

    .line 2847
    new-instance v21, Lcom/mediatek/apst/util/command/backup/DelAllContactsRsp;

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/backup/DelAllContactsRsp;-><init>(I)V

    .line 2849
    .local v21, rsp:Lcom/mediatek/apst/util/command/backup/DelAllContactsRsp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->deleteAllGroups()I

    .line 2851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->deleteContactForBackup()I

    move-result v26

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/backup/DelAllContactsRsp;->setDeleteCount(I)V

    .line 2853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_0

    .line 2855
    .end local v21           #rsp:Lcom/mediatek/apst/util/command/backup/DelAllContactsRsp;
    :cond_5
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/RestoreGroupReq;

    move/from16 v26, v0

    if-eqz v26, :cond_6

    move-object/from16 v16, p1

    .line 2856
    check-cast v16, Lcom/mediatek/apst/util/command/backup/RestoreGroupReq;

    .line 2857
    .local v16, req:Lcom/mediatek/apst/util/command/backup/RestoreGroupReq;
    new-instance v21, Lcom/mediatek/apst/util/command/backup/RestoreGroupRsp;

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/backup/RestoreGroupRsp;-><init>(I)V

    .line 2858
    .local v21, rsp:Lcom/mediatek/apst/util/command/backup/RestoreGroupRsp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v26

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/command/backup/RestoreGroupReq;->getGroupList()Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->updateGroupForRestore(Ljava/util/List;)I

    move-result v26

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/backup/RestoreGroupRsp;->setCount(I)V

    .line 2860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_0

    .line 2862
    .end local v16           #req:Lcom/mediatek/apst/util/command/backup/RestoreGroupReq;
    .end local v21           #rsp:Lcom/mediatek/apst/util/command/backup/RestoreGroupRsp;
    :cond_6
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/RestoreContactsReq;

    move/from16 v26, v0

    if-eqz v26, :cond_7

    move-object/from16 v16, p1

    .line 2863
    check-cast v16, Lcom/mediatek/apst/util/command/backup/RestoreContactsReq;

    .line 2864
    .local v16, req:Lcom/mediatek/apst/util/command/backup/RestoreContactsReq;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v26

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/command/RawBlockRequest;->getRaw()[B

    move-result-object v27

    new-instance v28, Lcom/mediatek/apst/target/service/MainService$CommandHandler$33;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$33;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    new-instance v29, Lcom/mediatek/apst/target/service/MainService$CommandHandler$34;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$34;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v30

    invoke-virtual/range {v26 .. v30}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->restoreDetailedContacts([BLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 2906
    .end local v16           #req:Lcom/mediatek/apst/util/command/backup/RestoreContactsReq;
    :cond_7
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/GetAllSmsForBackupReq;

    move/from16 v26, v0

    if-eqz v26, :cond_8

    .line 2907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v26

    new-instance v27, Lcom/mediatek/apst/target/service/MainService$CommandHandler$35;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$35;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->asyncGetAllSms(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 2920
    :cond_8
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/GetMmsDataForBackupReq;

    move/from16 v26, v0

    if-eqz v26, :cond_9

    .line 2922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v26

    new-instance v27, Lcom/mediatek/apst/target/service/MainService$CommandHandler$36;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$36;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v28

    const/16 v29, 0x1

    const/16 v30, 0x0

    invoke-virtual/range {v26 .. v30}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getMmsData(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;ZLjava/util/LinkedList;)V

    goto/16 :goto_0

    .line 2934
    :cond_9
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/DelAllMsgsForBackupReq;

    move/from16 v26, v0

    if-eqz v26, :cond_a

    .line 2935
    new-instance v21, Lcom/mediatek/apst/util/command/backup/DelAllMsgsForBackupRsp;

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/backup/DelAllMsgsForBackupRsp;-><init>(I)V

    .line 2938
    .local v21, rsp:Lcom/mediatek/apst/util/command/backup/DelAllMsgsForBackupRsp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->deleteAllMessages(Z)I

    move-result v26

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/backup/DelAllMsgsForBackupRsp;->setDeletedCount(I)V

    .line 2940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_0

    .line 2942
    .end local v21           #rsp:Lcom/mediatek/apst/util/command/backup/DelAllMsgsForBackupRsp;
    :cond_a
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/RestoreSmsReq;

    move/from16 v26, v0

    if-eqz v26, :cond_e

    .line 2943
    new-instance v21, Lcom/mediatek/apst/util/command/backup/RestoreSmsRsp;

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/backup/RestoreSmsRsp;-><init>(I)V

    .local v21, rsp:Lcom/mediatek/apst/util/command/backup/RestoreSmsRsp;
    move-object/from16 v16, p1

    .line 2945
    check-cast v16, Lcom/mediatek/apst/util/command/backup/RestoreSmsReq;

    .line 2946
    .local v16, req:Lcom/mediatek/apst/util/command/backup/RestoreSmsReq;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 2947
    .local v24, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMulMessageOb:Lcom/mediatek/apst/target/service/MulMessageObserver;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1500(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/MulMessageObserver;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MulMessageObserver;->stop()V

    .line 2948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v26

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/command/RawBlockRequest;->getRaw()[B

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->importSms([BLjava/util/ArrayList;)[J

    move-result-object v7

    .line 2950
    .local v7, insertedIds:[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMulMessageOb:Lcom/mediatek/apst/target/service/MulMessageObserver;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1500(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/MulMessageObserver;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MulMessageObserver;->start()V

    .line 2951
    if-nez v7, :cond_b

    .line 2952
    const/16 v26, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 2964
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_0

    .line 2954
    :cond_b
    if-eqz v24, :cond_d

    .line 2955
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [J

    move-object/from16 v25, v0

    .line 2956
    .local v25, threadIds:[J
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v6, v0, :cond_c

    .line 2957
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    aput-wide v26, v25, v6

    .line 2956
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2959
    :cond_c
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/backup/RestoreSmsRsp;->setThreadIds([J)V

    .line 2961
    .end local v6           #i:I
    .end local v25           #threadIds:[J
    :cond_d
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/mediatek/apst/util/command/backup/RestoreSmsRsp;->setInsertedIds([J)V

    goto :goto_2

    .line 2966
    .end local v7           #insertedIds:[J
    .end local v16           #req:Lcom/mediatek/apst/util/command/backup/RestoreSmsReq;
    .end local v21           #rsp:Lcom/mediatek/apst/util/command/backup/RestoreSmsRsp;
    .end local v24           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_e
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/RestoreMmsReq;

    move/from16 v26, v0

    if-eqz v26, :cond_13

    .line 2967
    new-instance v21, Lcom/mediatek/apst/util/command/backup/RestoreMmsRsp;

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/backup/RestoreMmsRsp;-><init>(I)V

    .local v21, rsp:Lcom/mediatek/apst/util/command/backup/RestoreMmsRsp;
    move-object/from16 v16, p1

    .line 2969
    check-cast v16, Lcom/mediatek/apst/util/command/backup/RestoreMmsReq;

    .line 2970
    .local v16, req:Lcom/mediatek/apst/util/command/backup/RestoreMmsReq;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 2971
    .restart local v24       #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMulMessageOb:Lcom/mediatek/apst/target/service/MulMessageObserver;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1500(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/MulMessageObserver;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MulMessageObserver;->onSelfChangeStart()V

    .line 2972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMulMessageOb:Lcom/mediatek/apst/target/service/MulMessageObserver;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1500(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/MulMessageObserver;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MulMessageObserver;->getMaxMmsId()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-nez v26, :cond_f

    .line 2974
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object p1, v26, v27

    const-string v27, ">>restore start ,pdu table is null"

    invoke-static/range {v26 .. v27}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getMaxMmsIdByInsert()J

    move-result-wide v10

    .line 2978
    .local v10, maxMmsId:J
    const-wide/16 v26, 0x3e8

    :try_start_0
    invoke-static/range {v26 .. v27}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2982
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMulMessageOb:Lcom/mediatek/apst/target/service/MulMessageObserver;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1500(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/MulMessageObserver;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10, v11}, Lcom/mediatek/apst/target/service/MulMessageObserver;->setMaxMmsId(J)V

    .line 2984
    .end local v10           #maxMmsId:J
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v26

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/command/RawBlockRequest;->getRaw()[B

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->importMms([BLjava/util/ArrayList;)[J

    move-result-object v7

    .line 2985
    .restart local v7       #insertedIds:[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMulMessageOb:Lcom/mediatek/apst/target/service/MulMessageObserver;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1500(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/MulMessageObserver;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MulMessageObserver;->onSelfChangeDone()V

    .line 2986
    if-nez v7, :cond_10

    .line 2987
    const/16 v26, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 2999
    :goto_5
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/command/backup/RestoreMmsReq;->isIsLastImport()Z

    move-result v26

    if-eqz v26, :cond_0

    .line 3000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_0

    .line 2979
    .end local v7           #insertedIds:[J
    .restart local v10       #maxMmsId:J
    :catch_0
    move-exception v5

    .line 2980
    .local v5, e:Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 2989
    .end local v5           #e:Ljava/lang/InterruptedException;
    .end local v10           #maxMmsId:J
    .restart local v7       #insertedIds:[J
    :cond_10
    if-eqz v24, :cond_12

    .line 2990
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [J

    move-object/from16 v25, v0

    .line 2991
    .restart local v25       #threadIds:[J
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_6
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v6, v0, :cond_11

    .line 2992
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    aput-wide v26, v25, v6

    .line 2991
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 2994
    :cond_11
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/backup/RestoreMmsRsp;->setThreadIds([J)V

    .line 2996
    .end local v6           #i:I
    .end local v25           #threadIds:[J
    :cond_12
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/mediatek/apst/util/command/backup/RestoreMmsRsp;->setInsertedIds([J)V

    goto :goto_5

    .line 3002
    .end local v7           #insertedIds:[J
    .end local v16           #req:Lcom/mediatek/apst/util/command/backup/RestoreMmsReq;
    .end local v21           #rsp:Lcom/mediatek/apst/util/command/backup/RestoreMmsRsp;
    .end local v24           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_13
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/GetEventsForBackupReq;

    move/from16 v26, v0

    if-eqz v26, :cond_14

    .line 3003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v26

    new-instance v27, Lcom/mediatek/apst/target/service/MainService$CommandHandler$37;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$37;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->getEvents(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 3018
    :cond_14
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/GetAttendeesForBackupReq;

    move/from16 v26, v0

    if-eqz v26, :cond_15

    .line 3019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v26

    new-instance v27, Lcom/mediatek/apst/target/service/MainService$CommandHandler$38;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$38;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->getAttendees(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 3034
    :cond_15
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/GetRemindersForBackupReq;

    move/from16 v26, v0

    if-eqz v26, :cond_16

    .line 3035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v26

    new-instance v27, Lcom/mediatek/apst/target/service/MainService$CommandHandler$39;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$39;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->getReminders(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 3050
    :cond_16
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/DelAllCalendarReq;

    move/from16 v26, v0

    if-eqz v26, :cond_17

    .line 3051
    new-instance v21, Lcom/mediatek/apst/util/command/backup/DelAllCalendarRsp;

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/backup/DelAllCalendarRsp;-><init>(I)V

    .line 3053
    .local v21, rsp:Lcom/mediatek/apst/util/command/backup/DelAllCalendarRsp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->deleteAll()V

    .line 3055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_0

    .line 3057
    .end local v21           #rsp:Lcom/mediatek/apst/util/command/backup/DelAllCalendarRsp;
    :cond_17
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/RestoreCalendarReq;

    move/from16 v26, v0

    if-eqz v26, :cond_18

    move-object/from16 v16, p1

    .line 3059
    check-cast v16, Lcom/mediatek/apst/util/command/backup/RestoreCalendarReq;

    .line 3060
    .local v16, req:Lcom/mediatek/apst/util/command/backup/RestoreCalendarReq;
    new-instance v21, Lcom/mediatek/apst/util/command/backup/RestoreCalendarRsp;

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/backup/RestoreCalendarRsp;-><init>(I)V

    .line 3062
    .local v21, rsp:Lcom/mediatek/apst/util/command/backup/RestoreCalendarRsp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v26

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/command/backup/RestoreCalendarReq;->getEvent()Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->insertAllEvents(Ljava/util/List;)J

    move-result-wide v26

    move-object/from16 v0, v21

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/util/command/backup/RestoreCalendarRsp;->setInsertedCount(J)V

    .line 3065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_0

    .line 3067
    .end local v16           #req:Lcom/mediatek/apst/util/command/backup/RestoreCalendarReq;
    .end local v21           #rsp:Lcom/mediatek/apst/util/command/backup/RestoreCalendarRsp;
    :cond_18
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/GetAllBookmarkForBackupReq;

    move/from16 v26, v0

    if-eqz v26, :cond_19

    .line 3068
    new-instance v22, Lcom/mediatek/apst/util/command/backup/GetAllBookmarkForBackupRsp;

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/backup/GetAllBookmarkForBackupRsp;-><init>(I)V

    .line 3070
    .local v22, rspCmd:Lcom/mediatek/apst/util/command/backup/GetAllBookmarkForBackupRsp;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3071
    .local v8, mBookmarkDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3072
    .local v9, mBookmarkFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mBookmarkProxy:Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1900(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;->asynGetAllBookmarks(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3074
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/mediatek/apst/util/command/backup/GetAllBookmarkForBackupRsp;->setmBookmarkDataList(Ljava/util/ArrayList;)V

    .line 3075
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/mediatek/apst/util/command/backup/GetAllBookmarkForBackupRsp;->setmBookmarkFolderList(Ljava/util/ArrayList;)V

    .line 3076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_0

    .line 3078
    .end local v8           #mBookmarkDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;>;"
    .end local v9           #mBookmarkFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;>;"
    .end local v22           #rspCmd:Lcom/mediatek/apst/util/command/backup/GetAllBookmarkForBackupRsp;
    :cond_19
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/DelAllBookmarkReq;

    move/from16 v26, v0

    if-eqz v26, :cond_1a

    .line 3079
    new-instance v22, Lcom/mediatek/apst/util/command/backup/DelAllBookmarkRsp;

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/backup/DelAllBookmarkRsp;-><init>(I)V

    .line 3080
    .local v22, rspCmd:Lcom/mediatek/apst/util/command/backup/DelAllBookmarkRsp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mBookmarkProxy:Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1900(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;->deleteAll()V

    .line 3086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_0

    .line 3088
    .end local v22           #rspCmd:Lcom/mediatek/apst/util/command/backup/DelAllBookmarkRsp;
    :cond_1a
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/RestoreBookmarkReq;

    move/from16 v26, v0

    if-eqz v26, :cond_1b

    move-object/from16 v26, p1

    .line 3089
    check-cast v26, Lcom/mediatek/apst/util/command/backup/RestoreBookmarkReq;

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/backup/RestoreBookmarkReq;->getmBookmarkDataList()Ljava/util/ArrayList;

    move-result-object v8

    .line 3091
    .restart local v8       #mBookmarkDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;>;"
    check-cast p1, Lcom/mediatek/apst/util/command/backup/RestoreBookmarkReq;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/command/backup/RestoreBookmarkReq;->getmBookmarkFolderList()Ljava/util/ArrayList;

    move-result-object v9

    .line 3093
    .restart local v9       #mBookmarkFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;>;"
    new-instance v22, Lcom/mediatek/apst/util/command/backup/RestoreBookmarkRsp;

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/backup/RestoreBookmarkRsp;-><init>(I)V

    .line 3095
    .local v22, rspCmd:Lcom/mediatek/apst/util/command/backup/RestoreBookmarkRsp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mBookmarkProxy:Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1900(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;->insertBookmark(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_0

    .line 3105
    .end local v8           #mBookmarkDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;>;"
    .end local v9           #mBookmarkFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;>;"
    .end local v22           #rspCmd:Lcom/mediatek/apst/util/command/backup/RestoreBookmarkRsp;
    .restart local p1
    :cond_1b
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/MediaGetStorageStateReq;

    move/from16 v26, v0

    if-eqz v26, :cond_1c

    .line 3107
    new-instance v21, Lcom/mediatek/apst/util/command/backup/MediaGetStorageStateRsp;

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/backup/MediaGetStorageStateRsp;-><init>(I)V

    .line 3109
    .local v21, rsp:Lcom/mediatek/apst/util/command/backup/MediaGetStorageStateRsp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mSysInfoProxy:Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1200(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->checkSDCardState()[Z

    move-result-object v23

    .line 3110
    .local v23, state:[Z
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "SDCard1 state :"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x0

    aget-boolean v27, v23, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 3111
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "SDCard2 state :"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x1

    aget-boolean v27, v23, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 3112
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/backup/MediaGetStorageStateRsp;->setStorageState([Z)V

    .line 3113
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSdSwap()Z

    move-result v26

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/backup/MediaGetStorageStateRsp;->setmSdSwap(Z)V

    .line 3114
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getInternalStoragePathSD()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/backup/MediaGetStorageStateRsp;->setmInternalStoragePath(Ljava/lang/String;)V

    .line 3115
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/backup/MediaGetStorageStateRsp;->setmExternalStoragePath(Ljava/lang/String;)V

    .line 3116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_0

    .line 3118
    .end local v21           #rsp:Lcom/mediatek/apst/util/command/backup/MediaGetStorageStateRsp;
    .end local v23           #state:[Z
    :cond_1c
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/MediaBackupReq;

    move/from16 v26, v0

    if-eqz v26, :cond_1f

    move-object/from16 v16, p1

    .line 3120
    check-cast v16, Lcom/mediatek/apst/util/command/backup/MediaBackupReq;

    .line 3121
    .local v16, req:Lcom/mediatek/apst/util/command/backup/MediaBackupReq;
    new-instance v21, Lcom/mediatek/apst/util/command/backup/MediaBackupRsp;

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/backup/MediaBackupRsp;-><init>(I)V

    .line 3122
    .local v21, rsp:Lcom/mediatek/apst/util/command/backup/MediaBackupRsp;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3123
    .local v15, oldPathsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 3125
    .local v13, newPathsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMediaProxy:Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1800(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;

    move-result-object v26

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/command/backup/MediaBackupReq;->getBackupPaths()Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v15, v13}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->getFilesUnderDirs(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3127
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "oldPaths count: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 3128
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "newPaths count: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 3129
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v14, v0, [Ljava/lang/String;

    .line 3130
    .local v14, oldPaths:[Ljava/lang/String;
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v12, v0, [Ljava/lang/String;

    .line 3131
    .local v12, newPaths:[Ljava/lang/String;
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_7
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v6, v0, :cond_1d

    .line 3132
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    aput-object v26, v14, v6

    .line 3133
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/APST_BACKUP0"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v12, v6

    .line 3134
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "oldPaths["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    aget-object v27, v14, v6

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 3135
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "newPaths["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    aget-object v27, v12, v6

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 3131
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 3137
    :cond_1d
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/mediatek/apst/util/command/backup/MediaBackupRsp;->setOldPaths([Ljava/lang/String;)V

    .line 3138
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/mediatek/apst/util/command/backup/MediaBackupRsp;->setNewPaths([Ljava/lang/String;)V

    .line 3140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMediaProxy:Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1800(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;

    move-result-object v26

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/apst/util/command/backup/MediaBackupRsp;->getOldPaths()[Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/apst/util/command/backup/MediaBackupRsp;->getNewPaths()[Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->renameFiles([Ljava/lang/String;[Ljava/lang/String;)[Z

    move-result-object v20

    .line 3142
    .local v20, resultRe:[Z
    if-nez v20, :cond_1e

    .line 3143
    const/16 v26, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 3174
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_0

    .line 3145
    :cond_1e
    const-string v26, "resultRe is not null"

    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    goto :goto_8

    .line 3176
    .end local v6           #i:I
    .end local v12           #newPaths:[Ljava/lang/String;
    .end local v13           #newPathsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #oldPaths:[Ljava/lang/String;
    .end local v15           #oldPathsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16           #req:Lcom/mediatek/apst/util/command/backup/MediaBackupReq;
    .end local v20           #resultRe:[Z
    .end local v21           #rsp:Lcom/mediatek/apst/util/command/backup/MediaBackupRsp;
    :cond_1f
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/MediaFileRenameReq;

    move/from16 v26, v0

    if-eqz v26, :cond_21

    .line 3178
    new-instance v21, Lcom/mediatek/apst/util/command/backup/MediaFileRenameRsp;

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/backup/MediaFileRenameRsp;-><init>(I)V

    .local v21, rsp:Lcom/mediatek/apst/util/command/backup/MediaFileRenameRsp;
    move-object/from16 v16, p1

    .line 3179
    check-cast v16, Lcom/mediatek/apst/util/command/backup/MediaFileRenameReq;

    .line 3180
    .local v16, req:Lcom/mediatek/apst/util/command/backup/MediaFileRenameReq;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMediaProxy:Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1800(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;

    move-result-object v26

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/command/backup/MediaFileRenameReq;->getOldPaths()[Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/command/backup/MediaFileRenameReq;->getNewPaths()[Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->renameFiles([Ljava/lang/String;[Ljava/lang/String;)[Z

    move-result-object v19

    .line 3182
    .local v19, result:[Z
    if-nez v19, :cond_20

    .line 3183
    const/16 v26, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 3188
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_0

    .line 3185
    :cond_20
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/backup/MediaFileRenameRsp;->setResults([Z)V

    goto :goto_9

    .line 3190
    .end local v16           #req:Lcom/mediatek/apst/util/command/backup/MediaFileRenameReq;
    .end local v19           #result:[Z
    .end local v21           #rsp:Lcom/mediatek/apst/util/command/backup/MediaFileRenameRsp;
    :cond_21
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/MediaRestoreReq;

    move/from16 v26, v0

    if-eqz v26, :cond_23

    .line 3192
    new-instance v21, Lcom/mediatek/apst/util/command/backup/MediaRestoreRsp;

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/backup/MediaRestoreRsp;-><init>(I)V

    .local v21, rsp:Lcom/mediatek/apst/util/command/backup/MediaRestoreRsp;
    move-object/from16 v16, p1

    .line 3193
    check-cast v16, Lcom/mediatek/apst/util/command/backup/MediaRestoreReq;

    .line 3194
    .local v16, req:Lcom/mediatek/apst/util/command/backup/MediaRestoreReq;
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/command/backup/MediaRestoreReq;->getRestorePath()Ljava/lang/String;

    move-result-object v18

    .line 3195
    .local v18, restorePath:Ljava/lang/String;
    if-eqz v18, :cond_22

    .line 3196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMediaProxy:Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1800(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->deleteAllFileUnder(Ljava/lang/String;)V

    .line 3197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMediaProxy:Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1800(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->deleteDirectory(Ljava/lang/String;)V

    .line 3198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMediaProxy:Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1800(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->createDirectory(Ljava/lang/String;)Z

    .line 3201
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_0

    .line 3203
    .end local v16           #req:Lcom/mediatek/apst/util/command/backup/MediaRestoreReq;
    .end local v18           #restorePath:Ljava/lang/String;
    .end local v21           #rsp:Lcom/mediatek/apst/util/command/backup/MediaRestoreRsp;
    :cond_23
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/MediaRestoreOverReq;

    move/from16 v26, v0

    if-eqz v26, :cond_24

    .line 3205
    new-instance v21, Lcom/mediatek/apst/util/command/backup/MediaRestoreOverRsp;

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/backup/MediaRestoreOverRsp;-><init>(I)V

    .local v21, rsp:Lcom/mediatek/apst/util/command/backup/MediaRestoreOverRsp;
    move-object/from16 v16, p1

    .line 3206
    check-cast v16, Lcom/mediatek/apst/util/command/backup/MediaRestoreOverReq;

    .line 3207
    .local v16, req:Lcom/mediatek/apst/util/command/backup/MediaRestoreOverReq;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMediaProxy:Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$1800(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v27, v0

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/command/backup/MediaRestoreOverReq;->getRestoreFilePath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->scan(Landroid/content/Context;Ljava/lang/String;)V

    .line 3209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_0

    .line 3211
    .end local v16           #req:Lcom/mediatek/apst/util/command/backup/MediaRestoreOverReq;
    .end local v21           #rsp:Lcom/mediatek/apst/util/command/backup/MediaRestoreOverRsp;
    :cond_24
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/command/backup/GetAppForBackupReq;

    move/from16 v26, v0

    if-eqz v26, :cond_25

    .line 3212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v26, v0

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mApplicationProxy:Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;
    invoke-static/range {v26 .. v26}, Lcom/mediatek/apst/target/service/MainService;->access$300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;

    move-result-object v27

    new-instance v28, Lcom/mediatek/apst/target/service/MainService$CommandHandler$40;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$40;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v29

    move-object/from16 v26, p1

    check-cast v26, Lcom/mediatek/apst/util/command/backup/GetAppForBackupReq;

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/backup/GetAppForBackupReq;->getDestIconWidth()I

    move-result v26

    check-cast p1, Lcom/mediatek/apst/util/command/backup/GetAppForBackupReq;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/command/backup/GetAppForBackupReq;->getDestIconHeight()I

    move-result v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v26

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;->fastGetAllApps2Backup(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;II)V

    goto/16 :goto_0

    .line 3231
    .restart local p1
    :cond_25
    const/16 v26, 0x0

    goto/16 :goto_1
.end method

.method public handleBookmarkFeatures(Lcom/mediatek/apst/util/command/BaseCommand;)Z
    .locals 5
    .parameter "cmd"

    .prologue
    .line 2723
    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getToken()I

    move-result v2

    .line 2725
    .local v2, reqToken:I
    instance-of v4, p1, Lcom/mediatek/apst/util/command/bookmark/AsyncGetAllBookmarkInfoReq;

    if-eqz v4, :cond_0

    .line 2726
    new-instance v3, Lcom/mediatek/apst/util/command/bookmark/AsyncGetAllBookmarkInfoRsp;

    invoke-direct {v3, v2}, Lcom/mediatek/apst/util/command/bookmark/AsyncGetAllBookmarkInfoRsp;-><init>(I)V

    .line 2728
    .local v3, rspCmd:Lcom/mediatek/apst/util/command/bookmark/AsyncGetAllBookmarkInfoRsp;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2729
    .local v0, mBookmarkDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2730
    .local v1, mBookmarkFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;>;"
    iget-object v4, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mBookmarkProxy:Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$1900(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;->asynGetAllBookmarks(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2732
    invoke-virtual {v3, v0}, Lcom/mediatek/apst/util/command/bookmark/AsyncGetAllBookmarkInfoRsp;->setmBookmarkDataList(Ljava/util/ArrayList;)V

    .line 2733
    invoke-virtual {v3, v1}, Lcom/mediatek/apst/util/command/bookmark/AsyncGetAllBookmarkInfoRsp;->setmBookmarkFolderList(Ljava/util/ArrayList;)V

    .line 2734
    iget-object v4, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v4, v3}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    .line 2765
    .end local v0           #mBookmarkDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;>;"
    .end local v1           #mBookmarkFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;>;"
    .end local v3           #rspCmd:Lcom/mediatek/apst/util/command/bookmark/AsyncGetAllBookmarkInfoRsp;
    .end local p1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    return v4

    .line 2735
    .restart local p1
    :cond_0
    instance-of v4, p1, Lcom/mediatek/apst/util/command/bookmark/AsyncInsertBookmarkReq;

    if-eqz v4, :cond_1

    move-object v4, p1

    .line 2736
    check-cast v4, Lcom/mediatek/apst/util/command/bookmark/AsyncInsertBookmarkReq;

    invoke-virtual {v4}, Lcom/mediatek/apst/util/command/bookmark/AsyncInsertBookmarkReq;->getBookmarkDataList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2738
    .restart local v0       #mBookmarkDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;>;"
    check-cast p1, Lcom/mediatek/apst/util/command/bookmark/AsyncInsertBookmarkReq;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/apst/util/command/bookmark/AsyncInsertBookmarkReq;->getBookmarkFolderList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2740
    .restart local v1       #mBookmarkFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;>;"
    new-instance v3, Lcom/mediatek/apst/util/command/bookmark/AsyncInsertBookmarkRsp;

    invoke-direct {v3, v2}, Lcom/mediatek/apst/util/command/bookmark/AsyncInsertBookmarkRsp;-><init>(I)V

    .line 2743
    .local v3, rspCmd:Lcom/mediatek/apst/util/command/bookmark/AsyncInsertBookmarkRsp;
    iget-object v4, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mBookmarkProxy:Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$1900(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;->insertBookmark(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2751
    iget-object v4, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v4, v3}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto :goto_0

    .line 2752
    .end local v0           #mBookmarkDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;>;"
    .end local v1           #mBookmarkFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;>;"
    .end local v3           #rspCmd:Lcom/mediatek/apst/util/command/bookmark/AsyncInsertBookmarkRsp;
    .restart local p1
    :cond_1
    instance-of v4, p1, Lcom/mediatek/apst/util/command/bookmark/AsyncDeleteBookmarkReq;

    if-eqz v4, :cond_2

    .line 2753
    new-instance v3, Lcom/mediatek/apst/util/command/bookmark/AsyncDeleteBookmarkRsp;

    invoke-direct {v3, v2}, Lcom/mediatek/apst/util/command/bookmark/AsyncDeleteBookmarkRsp;-><init>(I)V

    .line 2755
    .local v3, rspCmd:Lcom/mediatek/apst/util/command/bookmark/AsyncDeleteBookmarkRsp;
    iget-object v4, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mBookmarkProxy:Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$1900(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;->deleteAll()V

    .line 2761
    iget-object v4, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v4, v3}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto :goto_0

    .line 2763
    .end local v3           #rspCmd:Lcom/mediatek/apst/util/command/bookmark/AsyncDeleteBookmarkRsp;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public handleCalendarFeatures(Lcom/mediatek/apst/util/command/BaseCommand;)Z
    .locals 14
    .parameter "cmd"

    .prologue
    .line 2314
    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getToken()I

    move-result v8

    .line 2315
    .local v8, reqToken:I
    instance-of v11, p1, Lcom/mediatek/apst/util/command/calendar/CalendarBatchReq;

    if-eqz v11, :cond_2

    .line 2316
    iget-object v11, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    new-instance v12, Lcom/mediatek/apst/util/command/calendar/CalendarBatchRsp;

    invoke-direct {v12, v8}, Lcom/mediatek/apst/util/command/calendar/CalendarBatchRsp;-><init>(I)V

    #setter for: Lcom/mediatek/apst/target/service/MainService;->mCommandBatch:Lcom/mediatek/apst/util/command/ICommandBatch;
    invoke-static {v11, v12}, Lcom/mediatek/apst/target/service/MainService;->access$1002(Lcom/mediatek/apst/target/service/MainService;Lcom/mediatek/apst/util/command/ICommandBatch;)Lcom/mediatek/apst/util/command/ICommandBatch;

    move-object v7, p1

    .line 2317
    check-cast v7, Lcom/mediatek/apst/util/command/calendar/CalendarBatchReq;

    .line 2318
    .local v7, reqCalendarBatch:Lcom/mediatek/apst/util/command/calendar/CalendarBatchReq;
    const/4 v1, 0x0

    .line 2319
    .local v1, i:I
    iget-object v11, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    const/4 v12, 0x2

    #setter for: Lcom/mediatek/apst/target/service/MainService;->mResponseState:I
    invoke-static {v11, v12}, Lcom/mediatek/apst/target/service/MainService;->access$1102(Lcom/mediatek/apst/target/service/MainService;I)I

    .line 2321
    invoke-virtual {v7}, Lcom/mediatek/apst/util/command/RequestBatch;->getCommands()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/apst/util/command/BaseCommand;

    .line 2322
    .local v3, innerCmd:Lcom/mediatek/apst/util/command/BaseCommand;
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7}, Lcom/mediatek/apst/util/command/RequestBatch;->getCommands()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ne v1, v11, :cond_0

    .line 2325
    iget-object v11, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    const/4 v12, 0x3

    #setter for: Lcom/mediatek/apst/target/service/MainService;->mResponseState:I
    invoke-static {v11, v12}, Lcom/mediatek/apst/target/service/MainService;->access$1102(Lcom/mediatek/apst/target/service/MainService;I)I

    .line 2327
    :cond_0
    invoke-virtual {p0, v3}, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->handle(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto :goto_0

    .line 2329
    .end local v3           #innerCmd:Lcom/mediatek/apst/util/command/BaseCommand;
    :cond_1
    iget-object v11, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    const/4 v12, 0x1

    #setter for: Lcom/mediatek/apst/target/service/MainService;->mResponseState:I
    invoke-static {v11, v12}, Lcom/mediatek/apst/target/service/MainService;->access$1102(Lcom/mediatek/apst/target/service/MainService;I)I

    .line 2331
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v7           #reqCalendarBatch:Lcom/mediatek/apst/util/command/calendar/CalendarBatchReq;
    :cond_2
    instance-of v11, p1, Lcom/mediatek/apst/util/command/calendar/AddEventReq;

    if-eqz v11, :cond_4

    .line 2332
    new-instance v9, Lcom/mediatek/apst/util/command/calendar/AddEventRsp;

    invoke-direct {v9, v8}, Lcom/mediatek/apst/util/command/calendar/AddEventRsp;-><init>(I)V

    .local v9, rsp:Lcom/mediatek/apst/util/command/calendar/AddEventRsp;
    move-object v6, p1

    .line 2333
    check-cast v6, Lcom/mediatek/apst/util/command/calendar/AddEventReq;

    .line 2335
    .local v6, req:Lcom/mediatek/apst/util/command/calendar/AddEventReq;
    invoke-virtual {v6}, Lcom/mediatek/apst/util/command/calendar/AddEventReq;->getFromFeature()I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/mediatek/apst/util/command/calendar/AddEventRsp;->setFromFeature(I)V

    .line 2336
    invoke-virtual {v6}, Lcom/mediatek/apst/util/command/calendar/AddEventReq;->getEvent()Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;

    move-result-object v0

    .line 2337
    .local v0, event:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    iget-object v11, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v11}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->insertEvent(Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;)J

    move-result-wide v4

    .line 2338
    .local v4, insertedEventId:J
    invoke-virtual {v9, v4, v5}, Lcom/mediatek/apst/util/command/calendar/AddEventRsp;->setInsertedId(J)V

    .line 2340
    const-wide/16 v11, -0x1

    cmp-long v11, v4, v11

    if-nez v11, :cond_3

    .line 2341
    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 2347
    :goto_1
    iget-object v11, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v11, v9}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    .line 2429
    .end local v0           #event:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    .end local v4           #insertedEventId:J
    .end local v6           #req:Lcom/mediatek/apst/util/command/calendar/AddEventReq;
    .end local v9           #rsp:Lcom/mediatek/apst/util/command/calendar/AddEventRsp;
    :goto_2
    const/4 v11, 0x1

    :goto_3
    return v11

    .line 2343
    .restart local v0       #event:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    .restart local v4       #insertedEventId:J
    .restart local v6       #req:Lcom/mediatek/apst/util/command/calendar/AddEventReq;
    .restart local v9       #rsp:Lcom/mediatek/apst/util/command/calendar/AddEventRsp;
    :cond_3
    iget-object v11, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v11}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v11, v4, v5, v12, v13}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->getEvent(JZZ)Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/mediatek/apst/util/command/calendar/AddEventRsp;->setResult(Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;)V

    goto :goto_1

    .line 2348
    .end local v0           #event:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    .end local v4           #insertedEventId:J
    .end local v6           #req:Lcom/mediatek/apst/util/command/calendar/AddEventReq;
    .end local v9           #rsp:Lcom/mediatek/apst/util/command/calendar/AddEventRsp;
    :cond_4
    instance-of v11, p1, Lcom/mediatek/apst/util/command/calendar/DeleteEventReq;

    if-eqz v11, :cond_5

    .line 2349
    new-instance v9, Lcom/mediatek/apst/util/command/calendar/DeleteEventRsp;

    invoke-direct {v9, v8}, Lcom/mediatek/apst/util/command/calendar/DeleteEventRsp;-><init>(I)V

    .local v9, rsp:Lcom/mediatek/apst/util/command/calendar/DeleteEventRsp;
    move-object v6, p1

    .line 2351
    check-cast v6, Lcom/mediatek/apst/util/command/calendar/DeleteEventReq;

    .line 2352
    .local v6, req:Lcom/mediatek/apst/util/command/calendar/DeleteEventReq;
    iget-object v11, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v11}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v11

    invoke-virtual {v6}, Lcom/mediatek/apst/util/command/calendar/DeleteEventReq;->getDeleteIds()[J

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->deleteEvents([J)[Z

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/mediatek/apst/util/command/calendar/DeleteEventRsp;->setDeleteResults([Z)V

    .line 2355
    iget-object v11, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v11, v9}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto :goto_2

    .line 2356
    .end local v6           #req:Lcom/mediatek/apst/util/command/calendar/DeleteEventReq;
    .end local v9           #rsp:Lcom/mediatek/apst/util/command/calendar/DeleteEventRsp;
    :cond_5
    instance-of v11, p1, Lcom/mediatek/apst/util/command/calendar/GetCalendarsReq;

    if-eqz v11, :cond_6

    .line 2357
    iget-object v11, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v11}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v11

    new-instance v12, Lcom/mediatek/apst/target/service/MainService$CommandHandler$18;

    invoke-direct {v12, p0, v8}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$18;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->getCalendars(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto :goto_2

    .line 2370
    :cond_6
    instance-of v11, p1, Lcom/mediatek/apst/util/command/calendar/GetEventsReq;

    if-eqz v11, :cond_7

    .line 2371
    iget-object v11, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v11}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v11

    new-instance v12, Lcom/mediatek/apst/target/service/MainService$CommandHandler$19;

    invoke-direct {v12, p0, v8}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$19;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->getEvents(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto :goto_2

    .line 2384
    :cond_7
    instance-of v11, p1, Lcom/mediatek/apst/util/command/calendar/UpdateEventReq;

    if-eqz v11, :cond_9

    .line 2386
    new-instance v9, Lcom/mediatek/apst/util/command/calendar/UpdateEventRsp;

    invoke-direct {v9, v8}, Lcom/mediatek/apst/util/command/calendar/UpdateEventRsp;-><init>(I)V

    .local v9, rsp:Lcom/mediatek/apst/util/command/calendar/UpdateEventRsp;
    move-object v6, p1

    .line 2388
    check-cast v6, Lcom/mediatek/apst/util/command/calendar/UpdateEventReq;

    .line 2389
    .local v6, req:Lcom/mediatek/apst/util/command/calendar/UpdateEventReq;
    invoke-virtual {v6}, Lcom/mediatek/apst/util/command/calendar/UpdateEventReq;->getNewOne()Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;

    move-result-object v0

    .line 2390
    .restart local v0       #event:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    iget-object v11, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v11}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v11

    invoke-virtual {v6}, Lcom/mediatek/apst/util/command/calendar/UpdateEventReq;->getUpdateId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13, v0}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->updateEvent(JLcom/mediatek/apst/util/entity/calendar/CalendarEvent;)I

    move-result v10

    .line 2392
    .local v10, updateGroupCount:I
    const/4 v11, 0x1

    if-ge v10, v11, :cond_8

    .line 2393
    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 2396
    :cond_8
    iget-object v11, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v11, v9}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_2

    .line 2398
    .end local v0           #event:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    .end local v6           #req:Lcom/mediatek/apst/util/command/calendar/UpdateEventReq;
    .end local v9           #rsp:Lcom/mediatek/apst/util/command/calendar/UpdateEventRsp;
    .end local v10           #updateGroupCount:I
    :cond_9
    instance-of v11, p1, Lcom/mediatek/apst/util/command/calendar/GetRemindersReq;

    if-eqz v11, :cond_a

    .line 2399
    iget-object v11, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v11}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v11

    new-instance v12, Lcom/mediatek/apst/target/service/MainService$CommandHandler$20;

    invoke-direct {v12, p0, v8}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$20;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->getReminders(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_2

    .line 2412
    :cond_a
    instance-of v11, p1, Lcom/mediatek/apst/util/command/calendar/GetAttendeesReq;

    if-eqz v11, :cond_b

    .line 2413
    iget-object v11, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v11}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v11

    new-instance v12, Lcom/mediatek/apst/target/service/MainService$CommandHandler$21;

    invoke-direct {v12, p0, v8}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$21;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->getAttendees(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_2

    .line 2427
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_3
.end method

.method public handleCalendarSyncFeatures(Lcom/mediatek/apst/util/command/BaseCommand;)Z
    .locals 12
    .parameter "cmd"

    .prologue
    const/4 v10, 0x2

    .line 2440
    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getToken()I

    move-result v5

    .line 2441
    .local v5, reqToken:I
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/CalendarSyncStartReq;

    if-eqz v9, :cond_0

    .line 2442
    new-instance v8, Lcom/mediatek/apst/util/command/sync/CalendarSyncStartRsp;

    invoke-direct {v8, v5}, Lcom/mediatek/apst/util/command/sync/CalendarSyncStartRsp;-><init>(I)V

    .line 2444
    .local v8, rsp:Lcom/mediatek/apst/util/command/sync/CalendarSyncStartRsp;
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v9}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->isSyncNeedReinit()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/apst/util/command/sync/CalendarSyncStartRsp;->setSyncNeedReinit(Z)V

    .line 2445
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v9}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->getLastSyncDate()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/mediatek/apst/util/command/sync/CalendarSyncStartRsp;->setLastSyncDate(J)V

    .line 2446
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v9}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->getLocalAccountId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/mediatek/apst/util/command/sync/CalendarSyncStartRsp;->setLocalAccountId(J)V

    .line 2447
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v9}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->isSyncAble()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/apst/util/command/sync/CalendarSyncStartRsp;->setSyncAble(Z)V

    .line 2449
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v9, v8}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    .line 2653
    .end local v8           #rsp:Lcom/mediatek/apst/util/command/sync/CalendarSyncStartRsp;
    .end local p1
    :goto_0
    const/4 v9, 0x1

    :goto_1
    return v9

    .line 2450
    .restart local p1
    :cond_0
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/CalendarSyncOverReq;

    if-eqz v9, :cond_1

    .line 2451
    new-instance v8, Lcom/mediatek/apst/util/command/sync/CalendarSyncOverRsp;

    invoke-direct {v8, v5}, Lcom/mediatek/apst/util/command/sync/CalendarSyncOverRsp;-><init>(I)V

    .local v8, rsp:Lcom/mediatek/apst/util/command/sync/CalendarSyncOverRsp;
    move-object v4, p1

    .line 2453
    check-cast v4, Lcom/mediatek/apst/util/command/sync/CalendarSyncOverReq;

    .line 2454
    .local v4, req:Lcom/mediatek/apst/util/command/sync/CalendarSyncOverReq;
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v9}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v9

    invoke-virtual {v4}, Lcom/mediatek/apst/util/command/sync/CalendarSyncOverReq;->getSyncDate()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->updateSyncDate(J)Z

    .line 2455
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v9}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->getPcSyncEventsCount()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/apst/util/command/sync/CalendarSyncOverRsp;->setEventsCount(I)V

    .line 2457
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v9, v8}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto :goto_0

    .line 2458
    .end local v4           #req:Lcom/mediatek/apst/util/command/sync/CalendarSyncOverReq;
    .end local v8           #rsp:Lcom/mediatek/apst/util/command/sync/CalendarSyncOverRsp;
    :cond_1
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncInitReq;

    if-eqz v9, :cond_2

    .line 2459
    new-instance v8, Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncInitRsp;

    invoke-direct {v8, v5}, Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncInitRsp;-><init>(I)V

    .line 2462
    .local v8, rsp:Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncInitRsp;
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v9}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->getMaxEventId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncInitRsp;->setCurrentMaxId(J)V

    .line 2464
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v9, v8}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto :goto_0

    .line 2465
    .end local v8           #rsp:Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncInitRsp;
    :cond_2
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncGetAllEventsReq;

    if-eqz v9, :cond_3

    .line 2466
    check-cast p1, Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncGetAllEventsReq;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncGetAllEventsReq;->getEventIdLimit()J

    move-result-wide v1

    .line 2468
    .local v1, eventIdLimit:J
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v9}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v9

    new-instance v10, Lcom/mediatek/apst/target/service/MainService$CommandHandler$22;

    invoke-direct {v10, p0, v5}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$22;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v9, v1, v2, v10, v11}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->slowSyncGetAllEvents(JLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 2484
    .end local v1           #eventIdLimit:J
    .restart local p1
    :cond_3
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncGetAllRemindersReq;

    if-eqz v9, :cond_4

    .line 2485
    check-cast p1, Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncGetAllRemindersReq;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncGetAllRemindersReq;->getEventIdLimit()J

    move-result-wide v1

    .line 2487
    .restart local v1       #eventIdLimit:J
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v9}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v9

    new-instance v10, Lcom/mediatek/apst/target/service/MainService$CommandHandler$23;

    invoke-direct {v10, p0, v5}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$23;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v9, v1, v2, v10, v11}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->slowSyncGetAllReminders(JLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 2503
    .end local v1           #eventIdLimit:J
    .restart local p1
    :cond_4
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncGetAllAttendeesReq;

    if-eqz v9, :cond_5

    .line 2504
    check-cast p1, Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncGetAllAttendeesReq;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncGetAllAttendeesReq;->getEventIdLimit()J

    move-result-wide v1

    .line 2506
    .restart local v1       #eventIdLimit:J
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v9}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v9

    new-instance v10, Lcom/mediatek/apst/target/service/MainService$CommandHandler$24;

    invoke-direct {v10, p0, v5}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$24;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v9, v1, v2, v10, v11}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->slowSyncGetAllAttendees(JLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 2522
    .end local v1           #eventIdLimit:J
    .restart local p1
    :cond_5
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncAddEventsReq;

    if-eqz v9, :cond_7

    .line 2523
    new-instance v8, Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncAddEventsRsp;

    invoke-direct {v8, v5}, Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncAddEventsRsp;-><init>(I)V

    .line 2527
    .local v8, rsp:Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncAddEventsRsp;
    check-cast p1, Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncAddEventsReq;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/apst/util/command/RawBlockRequest;->getRaw()[B

    move-result-object v0

    .line 2529
    .local v0, detailedEventsInRaw:[B
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v9}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->slowSyncAddEvents([B)[B

    move-result-object v7

    .line 2531
    .local v7, results:[B
    if-nez v7, :cond_6

    .line 2532
    invoke-virtual {v8, v10}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 2537
    :goto_2
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v9, v8}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_0

    .line 2534
    :cond_6
    invoke-virtual {v8, v7}, Lcom/mediatek/apst/util/command/RawBlockResponse;->setRaw([B)V

    goto :goto_2

    .line 2538
    .end local v0           #detailedEventsInRaw:[B
    .end local v7           #results:[B
    .end local v8           #rsp:Lcom/mediatek/apst/util/command/sync/CalendarSlowSyncAddEventsRsp;
    .restart local p1
    :cond_7
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncInitReq;

    if-eqz v9, :cond_8

    .line 2539
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v9}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v9

    new-instance v10, Lcom/mediatek/apst/target/service/MainService$CommandHandler$25;

    invoke-direct {v10, p0, v5}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$25;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->fastSyncGetAllSyncFlags(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 2553
    :cond_8
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncGetEventsReq;

    if-eqz v9, :cond_9

    .line 2554
    check-cast p1, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncGetEventsReq;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncGetEventsReq;->getRequestedEventIds()[J

    move-result-object v6

    .line 2556
    .local v6, requestedEventsIds:[J
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v9}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v9

    new-instance v10, Lcom/mediatek/apst/target/service/MainService$CommandHandler$26;

    invoke-direct {v10, p0, v5}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$26;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v9, v6, v10, v11}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->fastSyncGetEvents([JLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 2572
    .end local v6           #requestedEventsIds:[J
    .restart local p1
    :cond_9
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncGetRemindersReq;

    if-eqz v9, :cond_a

    .line 2573
    check-cast p1, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncGetRemindersReq;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncGetRemindersReq;->getRequestedEventIds()[J

    move-result-object v6

    .line 2575
    .restart local v6       #requestedEventsIds:[J
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v9}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v9

    new-instance v10, Lcom/mediatek/apst/target/service/MainService$CommandHandler$27;

    invoke-direct {v10, p0, v5}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$27;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v9, v6, v10, v11}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->fastSyncGetReminders([JLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 2591
    .end local v6           #requestedEventsIds:[J
    .restart local p1
    :cond_a
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncGetAttendeesReq;

    if-eqz v9, :cond_b

    .line 2592
    check-cast p1, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncGetAttendeesReq;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncGetAttendeesReq;->getRequestedEventIds()[J

    move-result-object v6

    .line 2594
    .restart local v6       #requestedEventsIds:[J
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v9}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v9

    new-instance v10, Lcom/mediatek/apst/target/service/MainService$CommandHandler$28;

    invoke-direct {v10, p0, v5}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$28;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v9, v6, v10, v11}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->fastSyncGetAttendees([JLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 2610
    .end local v6           #requestedEventsIds:[J
    .restart local p1
    :cond_b
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncAddEventsReq;

    if-eqz v9, :cond_d

    .line 2611
    new-instance v8, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncAddEventsRsp;

    invoke-direct {v8, v5}, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncAddEventsRsp;-><init>(I)V

    .line 2615
    .local v8, rsp:Lcom/mediatek/apst/util/command/sync/CalendarFastSyncAddEventsRsp;
    check-cast p1, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncAddEventsReq;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/apst/util/command/RawBlockRequest;->getRaw()[B

    move-result-object v3

    .line 2617
    .local v3, eventsInRaw:[B
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v9}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->fastSyncAddEvents([B)[B

    move-result-object v7

    .line 2618
    .restart local v7       #results:[B
    if-nez v7, :cond_c

    .line 2619
    invoke-virtual {v8, v10}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 2624
    :goto_3
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v9, v8}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_0

    .line 2621
    :cond_c
    invoke-virtual {v8, v7}, Lcom/mediatek/apst/util/command/RawBlockResponse;->setRaw([B)V

    goto :goto_3

    .line 2625
    .end local v3           #eventsInRaw:[B
    .end local v7           #results:[B
    .end local v8           #rsp:Lcom/mediatek/apst/util/command/sync/CalendarFastSyncAddEventsRsp;
    .restart local p1
    :cond_d
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncDeleteEventsReq;

    if-eqz v9, :cond_e

    .line 2626
    new-instance v8, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncDeleteEventsRsp;

    invoke-direct {v8, v5}, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncDeleteEventsRsp;-><init>(I)V

    .local v8, rsp:Lcom/mediatek/apst/util/command/sync/CalendarFastSyncDeleteEventsRsp;
    move-object v4, p1

    .line 2629
    check-cast v4, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncDeleteEventsReq;

    .line 2630
    .local v4, req:Lcom/mediatek/apst/util/command/sync/CalendarFastSyncDeleteEventsReq;
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v9}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v9

    invoke-virtual {v4}, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncDeleteEventsReq;->getDeleteIds()[J

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->fastDeleteEvents([J)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncDeleteEventsRsp;->setDeleteCount(I)V

    .line 2633
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v9, v8}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_0

    .line 2634
    .end local v4           #req:Lcom/mediatek/apst/util/command/sync/CalendarFastSyncDeleteEventsReq;
    .end local v8           #rsp:Lcom/mediatek/apst/util/command/sync/CalendarFastSyncDeleteEventsRsp;
    :cond_e
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq;

    if-eqz v9, :cond_10

    .line 2635
    new-instance v8, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsRsp;

    invoke-direct {v8, v5}, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsRsp;-><init>(I)V

    .line 2639
    .local v8, rsp:Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsRsp;
    check-cast p1, Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsReq;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/apst/util/command/RawBlockRequest;->getRaw()[B

    move-result-object v3

    .line 2641
    .restart local v3       #eventsInRaw:[B
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mCalendarProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    invoke-static {v9}, Lcom/mediatek/apst/target/service/MainService;->access$1700(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->fastSyncUpdateEvents([B)[B

    move-result-object v7

    .line 2643
    .restart local v7       #results:[B
    if-nez v7, :cond_f

    .line 2644
    invoke-virtual {v8, v10}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 2649
    :goto_4
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v9, v8}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_0

    .line 2646
    :cond_f
    invoke-virtual {v8, v7}, Lcom/mediatek/apst/util/command/RawBlockResponse;->setRaw([B)V

    goto :goto_4

    .line 2651
    .end local v3           #eventsInRaw:[B
    .end local v7           #results:[B
    .end local v8           #rsp:Lcom/mediatek/apst/util/command/sync/CalendarFastSyncUpdateEventsRsp;
    .restart local p1
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method public handleContactsFeatures(Lcom/mediatek/apst/util/command/BaseCommand;)Z
    .locals 50
    .parameter "cmd"

    .prologue
    .line 1402
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getToken()I

    move-result v40

    .line 1403
    .local v40, reqToken:I
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/mediatek/apst/util/command/contacts/ContactsBatchReq;

    if-eqz v3, :cond_2

    .line 1404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    new-instance v4, Lcom/mediatek/apst/util/command/contacts/ContactsBatchRsp;

    move/from16 v0, v40

    invoke-direct {v4, v0}, Lcom/mediatek/apst/util/command/contacts/ContactsBatchRsp;-><init>(I)V

    #setter for: Lcom/mediatek/apst/target/service/MainService;->mCommandBatch:Lcom/mediatek/apst/util/command/ICommandBatch;
    invoke-static {v3, v4}, Lcom/mediatek/apst/target/service/MainService;->access$1002(Lcom/mediatek/apst/target/service/MainService;Lcom/mediatek/apst/util/command/ICommandBatch;)Lcom/mediatek/apst/util/command/ICommandBatch;

    move-object/from16 v39, p1

    .line 1405
    check-cast v39, Lcom/mediatek/apst/util/command/contacts/ContactsBatchReq;

    .line 1406
    .local v39, reqContactsBatch:Lcom/mediatek/apst/util/command/contacts/ContactsBatchReq;
    const/16 v28, 0x0

    .line 1407
    .local v28, i:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    const/4 v4, 0x2

    #setter for: Lcom/mediatek/apst/target/service/MainService;->mResponseState:I
    invoke-static {v3, v4}, Lcom/mediatek/apst/target/service/MainService;->access$1102(Lcom/mediatek/apst/target/service/MainService;I)I

    .line 1409
    invoke-virtual/range {v39 .. v39}, Lcom/mediatek/apst/util/command/RequestBatch;->getCommands()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/mediatek/apst/util/command/BaseCommand;

    .line 1410
    .local v30, innerCmd:Lcom/mediatek/apst/util/command/BaseCommand;
    add-int/lit8 v28, v28, 0x1

    invoke-virtual/range {v39 .. v39}, Lcom/mediatek/apst/util/command/RequestBatch;->getCommands()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v28

    if-ne v0, v3, :cond_0

    .line 1413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    const/4 v4, 0x3

    #setter for: Lcom/mediatek/apst/target/service/MainService;->mResponseState:I
    invoke-static {v3, v4}, Lcom/mediatek/apst/target/service/MainService;->access$1102(Lcom/mediatek/apst/target/service/MainService;I)I

    .line 1415
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->handle(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto :goto_0

    .line 1417
    .end local v30           #innerCmd:Lcom/mediatek/apst/util/command/BaseCommand;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    const/4 v4, 0x1

    #setter for: Lcom/mediatek/apst/target/service/MainService;->mResponseState:I
    invoke-static {v3, v4}, Lcom/mediatek/apst/target/service/MainService;->access$1102(Lcom/mediatek/apst/target/service/MainService;I)I

    .line 1793
    .end local v28           #i:I
    .end local v29           #i$:Ljava/util/Iterator;
    .end local v39           #reqContactsBatch:Lcom/mediatek/apst/util/command/contacts/ContactsBatchReq;
    .end local p1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    return v3

    .line 1418
    .restart local p1
    :cond_2
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/mediatek/apst/util/command/contacts/GetDetailedContactReq;

    if-eqz v3, :cond_4

    .line 1419
    new-instance v43, Lcom/mediatek/apst/util/command/contacts/GetDetailedContactRsp;

    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/contacts/GetDetailedContactRsp;-><init>(I)V

    .local v43, rsp:Lcom/mediatek/apst/util/command/contacts/GetDetailedContactRsp;
    move-object/from16 v38, p1

    .line 1421
    check-cast v38, Lcom/mediatek/apst/util/command/contacts/GetDetailedContactReq;

    .line 1422
    .local v38, req:Lcom/mediatek/apst/util/command/contacts/GetDetailedContactReq;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v3

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/GetDetailedContactReq;->getContactId()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getContact(JZ)Lcom/mediatek/apst/util/entity/contacts/RawContact;

    move-result-object v26

    .line 1424
    .local v26, detailedContact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    if-eqz v26, :cond_3

    .line 1425
    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    const/16 v4, 0x51a

    move-object/from16 v0, v43

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3, v4}, Lcom/mediatek/apst/util/command/contacts/GetDetailedContactRsp;->setDetailedContact(Lcom/mediatek/apst/util/entity/contacts/RawContact;Ljava/nio/ByteBuffer;I)V

    .line 1431
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto :goto_1

    .line 1428
    :cond_3
    const/4 v3, 0x2

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    goto :goto_3

    .line 1432
    .end local v26           #detailedContact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    .end local v38           #req:Lcom/mediatek/apst/util/command/contacts/GetDetailedContactReq;
    .end local v43           #rsp:Lcom/mediatek/apst/util/command/contacts/GetDetailedContactRsp;
    :cond_4
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/mediatek/apst/util/command/contacts/AddGroupReq;

    if-eqz v3, :cond_6

    .line 1433
    new-instance v43, Lcom/mediatek/apst/util/command/contacts/AddGroupRsp;

    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/contacts/AddGroupRsp;-><init>(I)V

    .local v43, rsp:Lcom/mediatek/apst/util/command/contacts/AddGroupRsp;
    move-object/from16 v38, p1

    .line 1435
    check-cast v38, Lcom/mediatek/apst/util/command/contacts/AddGroupReq;

    .line 1436
    .local v38, req:Lcom/mediatek/apst/util/command/contacts/AddGroupReq;
    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/AddGroupReq;->getGroup()Lcom/mediatek/apst/util/entity/contacts/Group;

    move-result-object v7

    .line 1437
    .local v7, group:Lcom/mediatek/apst/util/entity/contacts/Group;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->insertGroup(Lcom/mediatek/apst/util/entity/contacts/Group;)J

    move-result-wide v33

    .line 1438
    .local v33, insertedGroupId:J
    move-object/from16 v0, v43

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/util/command/contacts/AddGroupRsp;->setInsertedId(J)V

    .line 1439
    const-wide/16 v3, -0x1

    cmp-long v3, v33, v3

    if-nez v3, :cond_5

    .line 1440
    const/4 v3, 0x2

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 1445
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 1442
    :cond_5
    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Lcom/mediatek/apst/util/command/contacts/AddGroupRsp;->setResult(Lcom/mediatek/apst/util/entity/contacts/Group;)V

    goto :goto_4

    .line 1446
    .end local v7           #group:Lcom/mediatek/apst/util/entity/contacts/Group;
    .end local v33           #insertedGroupId:J
    .end local v38           #req:Lcom/mediatek/apst/util/command/contacts/AddGroupReq;
    .end local v43           #rsp:Lcom/mediatek/apst/util/command/contacts/AddGroupRsp;
    :cond_6
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/mediatek/apst/util/command/contacts/AddContactReq;

    if-eqz v3, :cond_8

    .line 1447
    new-instance v43, Lcom/mediatek/apst/util/command/contacts/AddContactRsp;

    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/contacts/AddContactRsp;-><init>(I)V

    .local v43, rsp:Lcom/mediatek/apst/util/command/contacts/AddContactRsp;
    move-object/from16 v38, p1

    .line 1449
    check-cast v38, Lcom/mediatek/apst/util/command/contacts/AddContactReq;

    .line 1451
    .local v38, req:Lcom/mediatek/apst/util/command/contacts/AddContactReq;
    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/AddContactReq;->getFromFeature()I

    move-result v3

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/contacts/AddContactRsp;->setFromFeature(I)V

    .line 1452
    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/AddContactReq;->getContact()Lcom/mediatek/apst/util/entity/contacts/RawContact;

    move-result-object v15

    .line 1453
    .local v15, contact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v15, v4}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->insertContact(Lcom/mediatek/apst/util/entity/contacts/RawContact;Z)J

    move-result-wide v41

    .line 1454
    .local v41, result:J
    const-wide/16 v3, 0x0

    cmp-long v3, v41, v3

    if-gez v3, :cond_7

    .line 1455
    const/4 v3, 0x2

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 1456
    move-object/from16 v0, v43

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/util/command/contacts/AddContactRsp;->setInsertedId(J)V

    .line 1463
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 1458
    :cond_7
    const/4 v3, 0x1

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 1459
    move-object/from16 v0, v43

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/util/command/contacts/AddContactRsp;->setInsertedId(J)V

    .line 1460
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v3

    const/4 v4, 0x1

    move-wide/from16 v0, v41

    invoke-virtual {v3, v0, v1, v4}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getContact(JZ)Lcom/mediatek/apst/util/entity/contacts/RawContact;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/contacts/AddContactRsp;->setResult(Lcom/mediatek/apst/util/entity/contacts/RawContact;)V

    goto :goto_5

    .line 1464
    .end local v15           #contact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    .end local v38           #req:Lcom/mediatek/apst/util/command/contacts/AddContactReq;
    .end local v41           #result:J
    .end local v43           #rsp:Lcom/mediatek/apst/util/command/contacts/AddContactRsp;
    :cond_8
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/mediatek/apst/util/command/contacts/AddSimContactReq;

    if-eqz v3, :cond_a

    .line 1465
    new-instance v43, Lcom/mediatek/apst/util/command/contacts/AddSimContactRsp;

    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/contacts/AddSimContactRsp;-><init>(I)V

    .local v43, rsp:Lcom/mediatek/apst/util/command/contacts/AddSimContactRsp;
    move-object/from16 v38, p1

    .line 1467
    check-cast v38, Lcom/mediatek/apst/util/command/contacts/AddSimContactReq;

    .line 1468
    .local v38, req:Lcom/mediatek/apst/util/command/contacts/AddSimContactReq;
    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/AddSimContactReq;->getContact()Lcom/mediatek/apst/util/entity/contacts/BaseContact;

    move-result-object v15

    .line 1469
    .local v15, contact:Lcom/mediatek/apst/util/entity/contacts/BaseContact;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v3

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->getPrimaryNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->getStoreLocation()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->insertSimContact(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v35

    .line 1472
    .local v35, insertedSimContactId:J
    const-wide/16 v3, -0x1

    cmp-long v3, v35, v3

    if-nez v3, :cond_9

    .line 1473
    const/4 v3, 0x2

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 1476
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 1477
    .end local v15           #contact:Lcom/mediatek/apst/util/entity/contacts/BaseContact;
    .end local v35           #insertedSimContactId:J
    .end local v38           #req:Lcom/mediatek/apst/util/command/contacts/AddSimContactReq;
    .end local v43           #rsp:Lcom/mediatek/apst/util/command/contacts/AddSimContactRsp;
    :cond_a
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/mediatek/apst/util/command/contacts/AddContactDataReq;

    if-eqz v3, :cond_c

    .line 1478
    new-instance v43, Lcom/mediatek/apst/util/command/contacts/AddContactDataRsp;

    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/contacts/AddContactDataRsp;-><init>(I)V

    .local v43, rsp:Lcom/mediatek/apst/util/command/contacts/AddContactDataRsp;
    move-object/from16 v38, p1

    .line 1480
    check-cast v38, Lcom/mediatek/apst/util/command/contacts/AddContactDataReq;

    .line 1481
    .local v38, req:Lcom/mediatek/apst/util/command/contacts/AddContactDataReq;
    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/AddContactDataReq;->getData()Lcom/mediatek/apst/util/entity/contacts/ContactData;

    move-result-object v25

    .line 1482
    .local v25, contactData:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v3, v0, v4}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->insertContactData(Lcom/mediatek/apst/util/entity/contacts/ContactData;Z)J

    move-result-wide v31

    .line 1484
    .local v31, insertedContactDataId:J
    move-object/from16 v0, v43

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/util/command/contacts/AddContactDataRsp;->setInsertedId(J)V

    .line 1485
    const-wide/16 v3, -0x1

    cmp-long v3, v31, v3

    if-nez v3, :cond_b

    .line 1486
    const/4 v3, 0x2

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 1491
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 1488
    :cond_b
    move-object/from16 v0, v43

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/contacts/AddContactDataRsp;->setResult(Lcom/mediatek/apst/util/entity/contacts/ContactData;)V

    goto :goto_6

    .line 1492
    .end local v25           #contactData:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    .end local v31           #insertedContactDataId:J
    .end local v38           #req:Lcom/mediatek/apst/util/command/contacts/AddContactDataReq;
    .end local v43           #rsp:Lcom/mediatek/apst/util/command/contacts/AddContactDataRsp;
    :cond_c
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipReq;

    if-eqz v3, :cond_10

    .line 1493
    new-instance v43, Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipRsp;

    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipRsp;-><init>(I)V

    .local v43, rsp:Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipRsp;
    move-object/from16 v38, p1

    .line 1495
    check-cast v38, Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipReq;

    .line 1496
    .local v38, req:Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipReq;
    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipReq;->getGroupEntry()Lcom/mediatek/apst/util/entity/contacts/Group;

    move-result-object v7

    .line 1497
    .restart local v7       #group:Lcom/mediatek/apst/util/entity/contacts/Group;
    const/4 v8, 0x0

    .line 1498
    .local v8, simIndex:[I
    sget v3, Lcom/mediatek/apst/util/FeatureOptionControl;->CONTACT_N_USIMGROUP:I

    if-eqz v3, :cond_d

    .line 1499
    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipReq;->getSimIndexes()[I

    move-result-object v8

    .line 1501
    :cond_d
    if-eqz v8, :cond_e

    sget v3, Lcom/mediatek/apst/util/FeatureOptionControl;->CONTACT_N_USIMGROUP:I

    if-nez v3, :cond_f

    .line 1503
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v3

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipReq;->getContactIds()[J

    move-result-object v4

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipReq;->getGroupId()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->insertGroupMembership([JJ)[J

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipRsp;->setInsertedIds([J)V

    .line 1512
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 1506
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v3

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipReq;->getContactIds()[J

    move-result-object v4

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipReq;->getGroupId()J

    move-result-wide v5

    invoke-virtual/range {v3 .. v8}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->insertGroupMembership([JJLcom/mediatek/apst/util/entity/contacts/Group;[I)[J

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipRsp;->setInsertedIds([J)V

    goto :goto_7

    .line 1513
    .end local v7           #group:Lcom/mediatek/apst/util/entity/contacts/Group;
    .end local v8           #simIndex:[I
    .end local v38           #req:Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipReq;
    .end local v43           #rsp:Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipRsp;
    :cond_10
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/mediatek/apst/util/command/contacts/UpdateGroupReq;

    if-eqz v3, :cond_15

    .line 1514
    new-instance v43, Lcom/mediatek/apst/util/command/contacts/UpdateGroupRsp;

    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/contacts/UpdateGroupRsp;-><init>(I)V

    .local v43, rsp:Lcom/mediatek/apst/util/command/contacts/UpdateGroupRsp;
    move-object/from16 v38, p1

    .line 1516
    check-cast v38, Lcom/mediatek/apst/util/command/contacts/UpdateGroupReq;

    .line 1517
    .local v38, req:Lcom/mediatek/apst/util/command/contacts/UpdateGroupReq;
    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/UpdateGroupReq;->getNewOne()Lcom/mediatek/apst/util/entity/contacts/Group;

    move-result-object v7

    .line 1518
    .restart local v7       #group:Lcom/mediatek/apst/util/entity/contacts/Group;
    const/16 v37, 0x0

    .line 1519
    .local v37, oldName:Ljava/lang/String;
    sget v3, Lcom/mediatek/apst/util/FeatureOptionControl;->CONTACT_N_USIMGROUP:I

    if-eqz v3, :cond_11

    .line 1520
    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/UpdateGroupReq;->getOldName()Ljava/lang/String;

    move-result-object v37

    .line 1522
    :cond_11
    const/16 v47, 0x0

    .line 1523
    .local v47, updateGroupCount:I
    if-eqz v37, :cond_12

    sget v3, Lcom/mediatek/apst/util/FeatureOptionControl;->CONTACT_N_USIMGROUP:I

    if-nez v3, :cond_14

    .line 1525
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v3

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/UpdateGroupReq;->getUpdateId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v7}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->updateGroup(JLcom/mediatek/apst/util/entity/contacts/Group;)I

    move-result v47

    .line 1532
    :goto_8
    const/4 v3, 0x1

    move/from16 v0, v47

    if-ge v0, v3, :cond_13

    .line 1533
    const/4 v3, 0x2

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 1536
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 1528
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v3

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/UpdateGroupReq;->getUpdateId()J

    move-result-wide v4

    move-object/from16 v0, v37

    invoke-virtual {v3, v4, v5, v7, v0}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->updateGroup(JLcom/mediatek/apst/util/entity/contacts/Group;Ljava/lang/String;)I

    move-result v47

    goto :goto_8

    .line 1537
    .end local v7           #group:Lcom/mediatek/apst/util/entity/contacts/Group;
    .end local v37           #oldName:Ljava/lang/String;
    .end local v38           #req:Lcom/mediatek/apst/util/command/contacts/UpdateGroupReq;
    .end local v43           #rsp:Lcom/mediatek/apst/util/command/contacts/UpdateGroupRsp;
    .end local v47           #updateGroupCount:I
    :cond_15
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/mediatek/apst/util/command/contacts/UpdateRawContactReq;

    if-eqz v3, :cond_17

    .line 1538
    new-instance v43, Lcom/mediatek/apst/util/command/contacts/UpdateRawContactRsp;

    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/contacts/UpdateRawContactRsp;-><init>(I)V

    .local v43, rsp:Lcom/mediatek/apst/util/command/contacts/UpdateRawContactRsp;
    move-object/from16 v38, p1

    .line 1540
    check-cast v38, Lcom/mediatek/apst/util/command/contacts/UpdateRawContactReq;

    .line 1541
    .local v38, req:Lcom/mediatek/apst/util/command/contacts/UpdateRawContactReq;
    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/UpdateRawContactReq;->getNewOne()Lcom/mediatek/apst/util/entity/contacts/RawContact;

    move-result-object v15

    .line 1542
    .local v15, contact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v9

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/UpdateRawContactReq;->getUpdateId()J

    move-result-wide v10

    const/16 v12, -0xff

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->updateContact(JILjava/lang/String;Ljava/lang/String;Lcom/mediatek/apst/util/entity/contacts/RawContact;Z)I

    move-result v48

    .line 1545
    .local v48, updateRawContactCount:I
    const/4 v3, 0x1

    move/from16 v0, v48

    if-ge v0, v3, :cond_16

    .line 1546
    const/4 v3, 0x2

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 1549
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 1550
    .end local v15           #contact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    .end local v38           #req:Lcom/mediatek/apst/util/command/contacts/UpdateRawContactReq;
    .end local v43           #rsp:Lcom/mediatek/apst/util/command/contacts/UpdateRawContactRsp;
    .end local v48           #updateRawContactCount:I
    :cond_17
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactReq;

    if-eqz v3, :cond_19

    .line 1551
    new-instance v43, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactRsp;

    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactRsp;-><init>(I)V

    .local v43, rsp:Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactRsp;
    move-object/from16 v38, p1

    .line 1554
    check-cast v38, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactReq;

    .line 1555
    .local v38, req:Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactReq;
    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactReq;->getNewOne()Lcom/mediatek/apst/util/entity/contacts/RawContact;

    move-result-object v15

    .line 1561
    .restart local v15       #contact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v16

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactReq;->getUpdateId()J

    move-result-wide v17

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactReq;->getSourceLocation()I

    move-result v19

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactReq;->getSimName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactReq;->getSimNumber()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactReq;->getSimEmail()Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x1

    move-object/from16 v23, v15

    invoke-virtual/range {v16 .. v24}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->updateContact(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/apst/util/entity/contacts/RawContact;Z)I

    move-result v46

    .line 1566
    .local v46, updateDetailedContactCount:I
    const/4 v3, 0x1

    move/from16 v0, v46

    if-ge v0, v3, :cond_18

    .line 1567
    const/4 v3, 0x2

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 1573
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 1569
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v3

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactReq;->getUpdateId()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getContact(JZ)Lcom/mediatek/apst/util/entity/contacts/RawContact;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactRsp;->setResult(Lcom/mediatek/apst/util/entity/contacts/RawContact;)V

    goto :goto_9

    .line 1574
    .end local v15           #contact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    .end local v38           #req:Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactReq;
    .end local v43           #rsp:Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactRsp;
    .end local v46           #updateDetailedContactCount:I
    :cond_19
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/mediatek/apst/util/command/contacts/UpdateSimContactReq;

    if-eqz v3, :cond_1b

    .line 1575
    new-instance v43, Lcom/mediatek/apst/util/command/contacts/UpdateSimContactRsp;

    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/contacts/UpdateSimContactRsp;-><init>(I)V

    .local v43, rsp:Lcom/mediatek/apst/util/command/contacts/UpdateSimContactRsp;
    move-object/from16 v38, p1

    .line 1577
    check-cast v38, Lcom/mediatek/apst/util/command/contacts/UpdateSimContactReq;

    .line 1578
    .local v38, req:Lcom/mediatek/apst/util/command/contacts/UpdateSimContactReq;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v9

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/UpdateSimContactReq;->getOldName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/UpdateSimContactReq;->getOldNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/UpdateSimContactReq;->getNewOne()Lcom/mediatek/apst/util/entity/contacts/BaseContact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/UpdateSimContactReq;->getNewOne()Lcom/mediatek/apst/util/entity/contacts/BaseContact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->getPrimaryNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/UpdateSimContactReq;->getSimId()I

    move-result v14

    invoke-virtual/range {v9 .. v14}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->updateSimContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v49

    .line 1582
    .local v49, updateSimContactCount:I
    const/4 v3, 0x1

    move/from16 v0, v49

    if-ge v0, v3, :cond_1a

    .line 1583
    const/4 v3, 0x2

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 1586
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 1587
    .end local v38           #req:Lcom/mediatek/apst/util/command/contacts/UpdateSimContactReq;
    .end local v43           #rsp:Lcom/mediatek/apst/util/command/contacts/UpdateSimContactRsp;
    .end local v49           #updateSimContactCount:I
    :cond_1b
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/mediatek/apst/util/command/contacts/UpdateContactDataReq;

    if-eqz v3, :cond_1d

    .line 1588
    new-instance v43, Lcom/mediatek/apst/util/command/contacts/UpdateContactDataRsp;

    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/contacts/UpdateContactDataRsp;-><init>(I)V

    .local v43, rsp:Lcom/mediatek/apst/util/command/contacts/UpdateContactDataRsp;
    move-object/from16 v38, p1

    .line 1590
    check-cast v38, Lcom/mediatek/apst/util/command/contacts/UpdateContactDataReq;

    .line 1591
    .local v38, req:Lcom/mediatek/apst/util/command/contacts/UpdateContactDataReq;
    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/UpdateContactDataReq;->getNewOne()Lcom/mediatek/apst/util/entity/contacts/ContactData;

    move-result-object v25

    .line 1592
    .restart local v25       #contactData:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v3

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/UpdateContactDataReq;->getUpdateId()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->updateContactData(JLcom/mediatek/apst/util/entity/contacts/ContactData;Z)I

    move-result v45

    .line 1594
    .local v45, updateContactDataCount:I
    const/4 v3, 0x1

    move/from16 v0, v45

    if-ge v0, v3, :cond_1c

    .line 1595
    const/4 v3, 0x2

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 1598
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 1599
    .end local v25           #contactData:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    .end local v38           #req:Lcom/mediatek/apst/util/command/contacts/UpdateContactDataReq;
    .end local v43           #rsp:Lcom/mediatek/apst/util/command/contacts/UpdateContactDataRsp;
    .end local v45           #updateContactDataCount:I
    :cond_1d
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/mediatek/apst/util/command/contacts/DeleteGroupReq;

    if-eqz v3, :cond_21

    .line 1600
    new-instance v43, Lcom/mediatek/apst/util/command/contacts/DeleteGroupRsp;

    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/contacts/DeleteGroupRsp;-><init>(I)V

    .local v43, rsp:Lcom/mediatek/apst/util/command/contacts/DeleteGroupRsp;
    move-object/from16 v38, p1

    .line 1602
    check-cast v38, Lcom/mediatek/apst/util/command/contacts/DeleteGroupReq;

    .line 1604
    .local v38, req:Lcom/mediatek/apst/util/command/contacts/DeleteGroupReq;
    const/16 v27, 0x0

    .line 1605
    .local v27, groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/contacts/Group;>;"
    sget v3, Lcom/mediatek/apst/util/FeatureOptionControl;->CONTACT_N_USIMGROUP:I

    if-eqz v3, :cond_1e

    .line 1606
    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/DeleteGroupReq;->getGroups()Ljava/util/ArrayList;

    move-result-object v27

    .line 1609
    :cond_1e
    if-eqz v27, :cond_1f

    sget v3, Lcom/mediatek/apst/util/FeatureOptionControl;->CONTACT_N_USIMGROUP:I

    if-nez v3, :cond_20

    .line 1611
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v3

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/DeleteGroupReq;->getDeleteIds()[J

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->deleteGroup([J)[Z

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/contacts/DeleteGroupRsp;->setDeleteResults([Z)V

    .line 1619
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 1614
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v3

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/DeleteGroupReq;->getDeleteIds()[J

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v3, v4, v0}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->deleteGroup([JLjava/util/ArrayList;)[Z

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/contacts/DeleteGroupRsp;->setDeleteResults([Z)V

    goto :goto_a

    .line 1620
    .end local v27           #groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/contacts/Group;>;"
    .end local v38           #req:Lcom/mediatek/apst/util/command/contacts/DeleteGroupReq;
    .end local v43           #rsp:Lcom/mediatek/apst/util/command/contacts/DeleteGroupRsp;
    :cond_21
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/mediatek/apst/util/command/contacts/DeleteContactReq;

    if-eqz v3, :cond_22

    .line 1621
    new-instance v43, Lcom/mediatek/apst/util/command/contacts/DeleteContactRsp;

    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/contacts/DeleteContactRsp;-><init>(I)V

    .local v43, rsp:Lcom/mediatek/apst/util/command/contacts/DeleteContactRsp;
    move-object/from16 v38, p1

    .line 1623
    check-cast v38, Lcom/mediatek/apst/util/command/contacts/DeleteContactReq;

    .line 1627
    .local v38, req:Lcom/mediatek/apst/util/command/contacts/DeleteContactReq;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v16

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/DeleteContactReq;->getDeleteIds()[J

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/DeleteContactReq;->getSourceLocation()I

    move-result v19

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/DeleteContactReq;->getSimNames()[Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/DeleteContactReq;->getSimNumbers()[Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/DeleteContactReq;->getSimEmails()[Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v16 .. v22}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->deleteContacts([JZI[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)[Z

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/contacts/DeleteContactRsp;->setDeleteResults([Z)V

    .line 1632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 1633
    .end local v38           #req:Lcom/mediatek/apst/util/command/contacts/DeleteContactReq;
    .end local v43           #rsp:Lcom/mediatek/apst/util/command/contacts/DeleteContactRsp;
    :cond_22
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/mediatek/apst/util/command/contacts/DeleteAllContactsReq;

    if-eqz v3, :cond_23

    .line 1634
    new-instance v43, Lcom/mediatek/apst/util/command/contacts/DeleteAllContactsRsp;

    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/contacts/DeleteAllContactsRsp;-><init>(I)V

    .line 1636
    .local v43, rsp:Lcom/mediatek/apst/util/command/contacts/DeleteAllContactsRsp;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->deleteAllContacts(Z)I

    move-result v3

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/contacts/DeleteAllContactsRsp;->setDeleteCount(I)V

    .line 1638
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 1639
    .end local v43           #rsp:Lcom/mediatek/apst/util/command/contacts/DeleteAllContactsRsp;
    :cond_23
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/mediatek/apst/util/command/contacts/DeleteSimContactReq;

    if-eqz v3, :cond_24

    .line 1640
    new-instance v43, Lcom/mediatek/apst/util/command/contacts/DeleteSimContactRsp;

    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/contacts/DeleteSimContactRsp;-><init>(I)V

    .local v43, rsp:Lcom/mediatek/apst/util/command/contacts/DeleteSimContactRsp;
    move-object/from16 v38, p1

    .line 1642
    check-cast v38, Lcom/mediatek/apst/util/command/contacts/DeleteSimContactReq;

    .line 1643
    .local v38, req:Lcom/mediatek/apst/util/command/contacts/DeleteSimContactReq;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v3

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/DeleteSimContactReq;->getNames()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/DeleteSimContactReq;->getNumbers()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/DeleteSimContactReq;->getSimId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->deleteSimContacts([Ljava/lang/String;[Ljava/lang/String;I)[Z

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/contacts/DeleteSimContactRsp;->setDeleteResults([Z)V

    .line 1646
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 1647
    .end local v38           #req:Lcom/mediatek/apst/util/command/contacts/DeleteSimContactReq;
    .end local v43           #rsp:Lcom/mediatek/apst/util/command/contacts/DeleteSimContactRsp;
    :cond_24
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/mediatek/apst/util/command/contacts/DeleteContactDataReq;

    if-eqz v3, :cond_27

    .line 1648
    new-instance v43, Lcom/mediatek/apst/util/command/contacts/DeleteContactDataRsp;

    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/contacts/DeleteContactDataRsp;-><init>(I)V

    .local v43, rsp:Lcom/mediatek/apst/util/command/contacts/DeleteContactDataRsp;
    move-object/from16 v38, p1

    .line 1650
    check-cast v38, Lcom/mediatek/apst/util/command/contacts/DeleteContactDataReq;

    .line 1652
    .local v38, req:Lcom/mediatek/apst/util/command/contacts/DeleteContactDataReq;
    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/DeleteContactDataReq;->getGroupEntry()Lcom/mediatek/apst/util/entity/contacts/Group;

    move-result-object v7

    .line 1653
    .restart local v7       #group:Lcom/mediatek/apst/util/entity/contacts/Group;
    const/4 v8, 0x0

    .line 1654
    .restart local v8       #simIndex:[I
    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/DeleteContactDataReq;->getSimIndexes()[I

    move-result-object v8

    .line 1656
    if-eqz v8, :cond_25

    sget v3, Lcom/mediatek/apst/util/FeatureOptionControl;->CONTACT_N_USIMGROUP:I

    if-nez v3, :cond_26

    .line 1657
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v3

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/DeleteContactDataReq;->getDeleteIds()[J

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->deleteContactData([J)[Z

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/contacts/DeleteContactDataRsp;->setDeleteResults([Z)V

    .line 1668
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 1660
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v3

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/DeleteContactDataReq;->getDeleteIds()[J

    move-result-object v4

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/contacts/DeleteContactDataReq;->getGroupId()J

    move-result-wide v5

    invoke-virtual/range {v3 .. v8}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->deleteContactData([JJLcom/mediatek/apst/util/entity/contacts/Group;[I)[Z

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/contacts/DeleteContactDataRsp;->setDeleteResults([Z)V

    goto :goto_b

    .line 1669
    .end local v7           #group:Lcom/mediatek/apst/util/entity/contacts/Group;
    .end local v8           #simIndex:[I
    .end local v38           #req:Lcom/mediatek/apst/util/command/contacts/DeleteContactDataReq;
    .end local v43           #rsp:Lcom/mediatek/apst/util/command/contacts/DeleteContactDataRsp;
    :cond_27
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/mediatek/apst/util/command/contacts/AsyncGetAllGroupsReq;

    if-eqz v3, :cond_28

    .line 1670
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v3

    new-instance v4, Lcom/mediatek/apst/target/service/MainService$CommandHandler$1;

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v4, v0, v1}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$1;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->asyncGetAllGroups(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_1

    .line 1684
    :cond_28
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/mediatek/apst/util/command/contacts/AsyncGetAllSimContactsReq;

    if-eqz v3, :cond_2a

    .line 1685
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mSysInfoProxy:Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1200(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSimAccessible()Z

    move-result v44

    .line 1686
    .local v44, simAccesible:Z
    if-eqz v44, :cond_29

    .line 1687
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v3

    new-instance v4, Lcom/mediatek/apst/target/service/MainService$CommandHandler$2;

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v4, v0, v1}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$2;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->asyncGetAllSimContacts(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_1

    .line 1705
    :cond_29
    new-instance v43, Lcom/mediatek/apst/util/command/contacts/AsyncGetAllSimContactsRsp;

    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/contacts/AsyncGetAllSimContactsRsp;-><init>(I)V

    .line 1707
    .local v43, rsp:Lcom/mediatek/apst/util/command/contacts/AsyncGetAllSimContactsRsp;
    const/4 v3, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/RawBlockResponse;->setRaw([B)V

    .line 1708
    const/4 v3, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/RawBlockResponse;->setProgress(I)V

    .line 1709
    const/4 v3, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/util/command/RawBlockResponse;->setTotal(I)V

    .line 1711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 1713
    .end local v43           #rsp:Lcom/mediatek/apst/util/command/contacts/AsyncGetAllSimContactsRsp;
    .end local v44           #simAccesible:Z
    :cond_2a
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/mediatek/apst/util/command/contacts/AsyncGetAllRawContactsReq;

    if-eqz v3, :cond_2b

    .line 1714
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v3

    new-instance v4, Lcom/mediatek/apst/target/service/MainService$CommandHandler$3;

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v4, v0, v1}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$3;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->asyncGetAllRawContacts(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_1

    .line 1728
    :cond_2b
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/mediatek/apst/util/command/contacts/AsyncGetAllContactDataReq;

    if-eqz v3, :cond_2c

    .line 1729
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v3

    check-cast p1, Lcom/mediatek/apst/util/command/contacts/AsyncGetAllContactDataReq;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/command/contacts/AsyncGetAllContactDataReq;->getRequestingDataTypes()Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lcom/mediatek/apst/target/service/MainService$CommandHandler$4;

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v5, v0, v1}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$4;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->asyncGetAllContactData(Ljava/util/List;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_1

    .line 1747
    .restart local p1
    :cond_2c
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/mediatek/apst/util/command/contacts/ImportDetailedContactsReq;

    if-eqz v3, :cond_2d

    move-object/from16 v38, p1

    .line 1748
    check-cast v38, Lcom/mediatek/apst/util/command/contacts/ImportDetailedContactsReq;

    .line 1749
    .local v38, req:Lcom/mediatek/apst/util/command/contacts/ImportDetailedContactsReq;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v3

    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/apst/util/command/RawBlockRequest;->getRaw()[B

    move-result-object v4

    new-instance v5, Lcom/mediatek/apst/target/service/MainService$CommandHandler$5;

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v5, v0, v1}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$5;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    new-instance v6, Lcom/mediatek/apst/target/service/MainService$CommandHandler$6;

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v6, v0, v1}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$6;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v3, v4, v5, v6, v9}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->fastImportDetailedContacts([BLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_1

    .line 1791
    .end local v38           #req:Lcom/mediatek/apst/util/command/contacts/ImportDetailedContactsReq;
    :cond_2d
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method public handleMainFrameFeatures(Lcom/mediatek/apst/util/command/BaseCommand;)Z
    .locals 13
    .parameter "cmd"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const-wide/16 v9, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1231
    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getToken()I

    move-result v4

    .line 1232
    .local v4, reqToken:I
    instance-of v8, p1, Lcom/mediatek/apst/util/command/sysinfo/GreetingReq;

    if-eqz v8, :cond_1

    .line 1233
    new-instance v5, Lcom/mediatek/apst/util/command/sysinfo/GreetingRsp;

    invoke-direct {v5, v4}, Lcom/mediatek/apst/util/command/sysinfo/GreetingRsp;-><init>(I)V

    .line 1235
    .local v5, rsp:Lcom/mediatek/apst/util/command/sysinfo/GreetingRsp;
    const/16 v6, 0x51a

    invoke-virtual {v5, v6}, Lcom/mediatek/apst/util/command/sysinfo/GreetingRsp;->setVersionCode(I)V

    .line 1237
    iget-object v6, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v6, v5}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    .end local v5           #rsp:Lcom/mediatek/apst/util/command/sysinfo/GreetingRsp;
    :goto_0
    move v6, v7

    .line 1391
    :cond_0
    return v6

    .line 1238
    :cond_1
    instance-of v8, p1, Lcom/mediatek/apst/util/command/sysinfo/SysInfoBatchReq;

    if-eqz v8, :cond_4

    .line 1239
    iget-object v6, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    new-instance v8, Lcom/mediatek/apst/util/command/sysinfo/SysInfoBatchRsp;

    invoke-direct {v8, v4}, Lcom/mediatek/apst/util/command/sysinfo/SysInfoBatchRsp;-><init>(I)V

    #setter for: Lcom/mediatek/apst/target/service/MainService;->mCommandBatch:Lcom/mediatek/apst/util/command/ICommandBatch;
    invoke-static {v6, v8}, Lcom/mediatek/apst/target/service/MainService;->access$1002(Lcom/mediatek/apst/target/service/MainService;Lcom/mediatek/apst/util/command/ICommandBatch;)Lcom/mediatek/apst/util/command/ICommandBatch;

    move-object v3, p1

    .line 1240
    check-cast v3, Lcom/mediatek/apst/util/command/sysinfo/SysInfoBatchReq;

    .line 1241
    .local v3, reqSysInfoBatch:Lcom/mediatek/apst/util/command/sysinfo/SysInfoBatchReq;
    const/4 v0, 0x0

    .line 1242
    .local v0, i:I
    iget-object v6, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #setter for: Lcom/mediatek/apst/target/service/MainService;->mResponseState:I
    invoke-static {v6, v11}, Lcom/mediatek/apst/target/service/MainService;->access$1102(Lcom/mediatek/apst/target/service/MainService;I)I

    .line 1244
    invoke-virtual {v3}, Lcom/mediatek/apst/util/command/RequestBatch;->getCommands()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/apst/util/command/BaseCommand;

    .line 1245
    .local v2, innerCmd:Lcom/mediatek/apst/util/command/BaseCommand;
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3}, Lcom/mediatek/apst/util/command/RequestBatch;->getCommands()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v0, v6, :cond_2

    .line 1248
    iget-object v6, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #setter for: Lcom/mediatek/apst/target/service/MainService;->mResponseState:I
    invoke-static {v6, v12}, Lcom/mediatek/apst/target/service/MainService;->access$1102(Lcom/mediatek/apst/target/service/MainService;I)I

    .line 1250
    :cond_2
    invoke-virtual {p0, v2}, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->handle(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto :goto_1

    .line 1252
    .end local v2           #innerCmd:Lcom/mediatek/apst/util/command/BaseCommand;
    :cond_3
    iget-object v6, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #setter for: Lcom/mediatek/apst/target/service/MainService;->mResponseState:I
    invoke-static {v6, v7}, Lcom/mediatek/apst/target/service/MainService;->access$1102(Lcom/mediatek/apst/target/service/MainService;I)I

    goto :goto_0

    .line 1253
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #reqSysInfoBatch:Lcom/mediatek/apst/util/command/sysinfo/SysInfoBatchReq;
    :cond_4
    instance-of v8, p1, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoReq;

    if-eqz v8, :cond_7

    .line 1254
    new-instance v5, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;

    invoke-direct {v5, v4}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;-><init>(I)V

    .line 1257
    .local v5, rsp:Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getDevice()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setDevice(Ljava/lang/String;)V

    .line 1258
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getManufacturer()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setManufacturer(Ljava/lang/String;)V

    .line 1259
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setFirmwareVersion(Ljava/lang/String;)V

    .line 1260
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getModel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setModel(Ljava/lang/String;)V

    .line 1264
    invoke-static {}, Lcom/mediatek/apst/util/FeatureOptionControl;->getFeatureList()[I

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setFeatureOptionList([I)V

    .line 1267
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSdMounted()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1268
    invoke-virtual {v5, v7}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setSdMounted(Z)V

    .line 1269
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSdWriteable()Z

    move-result v8

    invoke-virtual {v5, v8}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setSdWriteable(Z)V

    .line 1270
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getSdPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setSdCardPath(Ljava/lang/String;)V

    .line 1271
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getSdTotalSpace()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setSdCardTotalSpace(J)V

    .line 1272
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getSdAvailableSpace()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setSdCardAvailableSpace(J)V

    .line 1281
    :goto_2
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mSysInfoProxy:Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;
    invoke-static {v8}, Lcom/mediatek/apst/target/service/MainService;->access$1200(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->checkSDCardState()[Z

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setSDCardAndEmmcState([Z)V

    .line 1282
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getInternalTotalSpace()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setInternalTotalSpace(J)V

    .line 1284
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getInternalAvailableSpace()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setInternalAvailableSpace(J)V

    .line 1287
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v8}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getAvailableContactsCount()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setContactsCount(I)V

    .line 1290
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v8}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getMessagesCount()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setMessagesCount(I)V

    .line 1291
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mApplicationProxy:Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;
    invoke-static {v8}, Lcom/mediatek/apst/target/service/MainService;->access$300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;->getApplicationsCount()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setApplicationsCount(I)V

    .line 1295
    invoke-virtual {v5, v7}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setGemini(Z)V

    .line 1296
    invoke-virtual {v5, v6}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setGemini3Sim(Z)V

    .line 1297
    invoke-virtual {v5, v6}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setGemini4Sim(Z)V

    .line 1299
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSim1Accessible()Z

    move-result v8

    invoke-virtual {v5, v8}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setSim1Accessible(Z)V

    .line 1300
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSim2Accessible()Z

    move-result v8

    invoke-virtual {v5, v8}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setSim2Accessible(Z)V

    .line 1301
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSim3Accessible()Z

    move-result v8

    invoke-virtual {v5, v8}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setSim3Accessible(Z)V

    .line 1302
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSim4Accessible()Z

    move-result v8

    invoke-virtual {v5, v8}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setSim4Accessible(Z)V

    .line 1303
    invoke-static {v6}, Lcom/mediatek/apst/target/util/Global;->getSimInfoBySlot(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setSim1Info(Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;)V

    .line 1305
    invoke-static {v7}, Lcom/mediatek/apst/target/util/Global;->getSimInfoBySlot(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setSim2Info(Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;)V

    .line 1307
    invoke-static {v11}, Lcom/mediatek/apst/target/util/Global;->getSimInfoBySlot(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setSim3Info(Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;)V

    .line 1309
    invoke-static {v12}, Lcom/mediatek/apst/target/util/Global;->getSimInfoBySlot(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setSim4Info(Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;)V

    .line 1313
    invoke-virtual {v5}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->getSlotInfoList()Ljava/util/List;

    move-result-object v8

    invoke-static {v6}, Lcom/mediatek/apst/target/util/Global;->getSimInfoBySlot(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1315
    invoke-virtual {v5}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->getSlotInfoList()Ljava/util/List;

    move-result-object v8

    invoke-static {v7}, Lcom/mediatek/apst/target/util/Global;->getSimInfoBySlot(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1328
    invoke-virtual {p0}, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "handle"

    new-array v10, v7, [Ljava/lang/Object;

    aput-object p1, v10, v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Dual-SIM | SIM:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->isSimAccessible()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " | SIM1:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->isSim1Accessible()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " | SIM2:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->isSim2Accessible()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " | SIM3:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->isSim3Accessible()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " | SIM4:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->isSim4Accessible()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/mediatek/apst/target/util/Debugger;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 1352
    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getAllSIMList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setSimInfoList(Ljava/util/List;)V

    .line 1355
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mBR:Lcom/mediatek/apst/target/receiver/InternalReceiver;
    invoke-static {v8}, Lcom/mediatek/apst/target/service/MainService;->access$1400(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/receiver/InternalReceiver;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 1356
    iget-object v6, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mBR:Lcom/mediatek/apst/target/receiver/InternalReceiver;
    invoke-static {v6}, Lcom/mediatek/apst/target/service/MainService;->access$1400(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/receiver/InternalReceiver;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/apst/target/receiver/InternalReceiver;->getBatteryLevel()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setBatteryLevel(I)V

    .line 1357
    iget-object v6, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mBR:Lcom/mediatek/apst/target/receiver/InternalReceiver;
    invoke-static {v6}, Lcom/mediatek/apst/target/service/MainService;->access$1400(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/receiver/InternalReceiver;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/apst/target/receiver/InternalReceiver;->getBatteryScale()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setBatteryScale(I)V

    .line 1363
    :goto_3
    iget-object v6, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v6, v5}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_0

    .line 1275
    :cond_5
    invoke-virtual {v5, v6}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setSdMounted(Z)V

    .line 1276
    invoke-virtual {v5, v6}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setSdWriteable(Z)V

    .line 1277
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setSdCardPath(Ljava/lang/String;)V

    .line 1278
    invoke-virtual {v5, v9, v10}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setSdCardTotalSpace(J)V

    .line 1279
    invoke-virtual {v5, v9, v10}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setSdCardAvailableSpace(J)V

    goto/16 :goto_2

    .line 1359
    :cond_6
    invoke-virtual {v5, v6}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setBatteryLevel(I)V

    .line 1360
    invoke-virtual {v5, v6}, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->setBatteryScale(I)V

    goto :goto_3

    .line 1364
    .end local v5           #rsp:Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;
    :cond_7
    instance-of v8, p1, Lcom/mediatek/apst/util/command/sysinfo/GetStorageReq;

    if-eqz v8, :cond_0

    .line 1365
    new-instance v5, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;

    invoke-direct {v5, v4}, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;-><init>(I)V

    .line 1368
    .local v5, rsp:Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSdMounted()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1369
    invoke-virtual {v5, v7}, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->setSdMounted(Z)V

    .line 1370
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSdWriteable()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->setSdWriteable(Z)V

    .line 1371
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getSdPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->setSdCardPath(Ljava/lang/String;)V

    .line 1372
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getSdTotalSpace()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->setSdCardTotalSpace(J)V

    .line 1373
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getSdAvailableSpace()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->setSdCardAvailableSpace(J)V

    .line 1382
    :goto_4
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getInternalTotalSpace()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->setInternalTotalSpace(J)V

    .line 1384
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getInternalAvailableSpace()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->setInternalAvailableSpace(J)V

    .line 1387
    iget-object v6, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v6, v5}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_0

    .line 1376
    :cond_8
    invoke-virtual {v5, v6}, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->setSdMounted(Z)V

    .line 1377
    invoke-virtual {v5, v6}, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->setSdWriteable(Z)V

    .line 1378
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->setSdCardPath(Ljava/lang/String;)V

    .line 1379
    invoke-virtual {v5, v9, v10}, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->setSdCardTotalSpace(J)V

    .line 1380
    invoke-virtual {v5, v9, v10}, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->setSdCardAvailableSpace(J)V

    goto :goto_4
.end method

.method public handleMediaFeatures(Lcom/mediatek/apst/util/command/BaseCommand;)Z
    .locals 8
    .parameter "cmd"

    .prologue
    const/4 v7, 0x2

    .line 2664
    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getToken()I

    move-result v1

    .line 2665
    .local v1, reqToken:I
    instance-of v4, p1, Lcom/mediatek/apst/util/command/media/GetContentDirectoriesReq;

    if-eqz v4, :cond_1

    .line 2666
    new-instance v3, Lcom/mediatek/apst/util/command/media/GetContentDirectoriesRsp;

    invoke-direct {v3, v1}, Lcom/mediatek/apst/util/command/media/GetContentDirectoriesRsp;-><init>(I)V

    .line 2669
    .local v3, rsp:Lcom/mediatek/apst/util/command/media/GetContentDirectoriesRsp;
    iget-object v4, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMediaProxy:Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$1800(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->getContentDirectories()[Lcom/mediatek/apst/util/entity/media/MediaInfo;

    move-result-object v2

    .line 2670
    .local v2, result:[Lcom/mediatek/apst/util/entity/media/MediaInfo;
    if-nez v2, :cond_0

    .line 2671
    invoke-virtual {v3, v7}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 2676
    :goto_0
    iget-object v4, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v4, v3}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    .line 2710
    .end local v2           #result:[Lcom/mediatek/apst/util/entity/media/MediaInfo;
    .end local v3           #rsp:Lcom/mediatek/apst/util/command/media/GetContentDirectoriesRsp;
    :goto_1
    const/4 v4, 0x1

    :goto_2
    return v4

    .line 2673
    .restart local v2       #result:[Lcom/mediatek/apst/util/entity/media/MediaInfo;
    .restart local v3       #rsp:Lcom/mediatek/apst/util/command/media/GetContentDirectoriesRsp;
    :cond_0
    invoke-virtual {v3, v2}, Lcom/mediatek/apst/util/command/media/GetContentDirectoriesRsp;->setDirectories([Lcom/mediatek/apst/util/entity/media/MediaInfo;)V

    goto :goto_0

    .line 2677
    .end local v2           #result:[Lcom/mediatek/apst/util/entity/media/MediaInfo;
    .end local v3           #rsp:Lcom/mediatek/apst/util/command/media/GetContentDirectoriesRsp;
    :cond_1
    instance-of v4, p1, Lcom/mediatek/apst/util/command/media/GetAllMediaFilesReq;

    if-eqz v4, :cond_3

    .line 2678
    new-instance v3, Lcom/mediatek/apst/util/command/media/GetAllMediaFilesRsp;

    invoke-direct {v3, v1}, Lcom/mediatek/apst/util/command/media/GetAllMediaFilesRsp;-><init>(I)V

    .local v3, rsp:Lcom/mediatek/apst/util/command/media/GetAllMediaFilesRsp;
    move-object v0, p1

    .line 2680
    check-cast v0, Lcom/mediatek/apst/util/command/media/GetAllMediaFilesReq;

    .line 2681
    .local v0, req:Lcom/mediatek/apst/util/command/media/GetAllMediaFilesReq;
    iget-object v4, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMediaProxy:Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$1800(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/apst/util/command/media/GetAllMediaFilesReq;->getRequestedContentTypes()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->getFiles(I)[Lcom/mediatek/apst/util/entity/media/MediaInfo;

    move-result-object v2

    .line 2683
    .restart local v2       #result:[Lcom/mediatek/apst/util/entity/media/MediaInfo;
    if-nez v2, :cond_2

    .line 2684
    invoke-virtual {v3, v7}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 2689
    :goto_3
    iget-object v4, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v4, v3}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto :goto_1

    .line 2686
    :cond_2
    invoke-virtual {v3, v2}, Lcom/mediatek/apst/util/command/media/GetAllMediaFilesRsp;->setFiles([Lcom/mediatek/apst/util/entity/media/MediaInfo;)V

    goto :goto_3

    .line 2690
    .end local v0           #req:Lcom/mediatek/apst/util/command/media/GetAllMediaFilesReq;
    .end local v2           #result:[Lcom/mediatek/apst/util/entity/media/MediaInfo;
    .end local v3           #rsp:Lcom/mediatek/apst/util/command/media/GetAllMediaFilesRsp;
    :cond_3
    instance-of v4, p1, Lcom/mediatek/apst/util/command/media/RenameFilesReq;

    if-eqz v4, :cond_5

    .line 2691
    new-instance v3, Lcom/mediatek/apst/util/command/media/RenameFilesRsp;

    invoke-direct {v3, v1}, Lcom/mediatek/apst/util/command/media/RenameFilesRsp;-><init>(I)V

    .local v3, rsp:Lcom/mediatek/apst/util/command/media/RenameFilesRsp;
    move-object v0, p1

    .line 2693
    check-cast v0, Lcom/mediatek/apst/util/command/media/RenameFilesReq;

    .line 2694
    .local v0, req:Lcom/mediatek/apst/util/command/media/RenameFilesReq;
    iget-object v4, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMediaProxy:Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$1800(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/apst/util/command/media/RenameFilesReq;->getOldPaths()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mediatek/apst/util/command/media/RenameFilesReq;->getNewPaths()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->renameFiles([Ljava/lang/String;[Ljava/lang/String;)[Z

    move-result-object v2

    .line 2696
    .local v2, result:[Z
    if-nez v2, :cond_4

    .line 2697
    invoke-virtual {v3, v7}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 2702
    :goto_4
    iget-object v4, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v4, v3}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto :goto_1

    .line 2699
    :cond_4
    invoke-virtual {v3, v2}, Lcom/mediatek/apst/util/command/media/RenameFilesRsp;->setResults([Z)V

    goto :goto_4

    .line 2703
    .end local v0           #req:Lcom/mediatek/apst/util/command/media/RenameFilesReq;
    .end local v2           #result:[Z
    .end local v3           #rsp:Lcom/mediatek/apst/util/command/media/RenameFilesRsp;
    :cond_5
    instance-of v4, p1, Lcom/mediatek/apst/util/command/media/MediaSyncOverReq;

    if-eqz v4, :cond_6

    .line 2704
    iget-object v4, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMediaProxy:Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$1800(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v4, v5}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->scan(Landroid/content/Context;)V

    .line 2705
    new-instance v3, Lcom/mediatek/apst/util/command/media/MediaSyncOverRsp;

    invoke-direct {v3, v1}, Lcom/mediatek/apst/util/command/media/MediaSyncOverRsp;-><init>(I)V

    .line 2706
    .local v3, rsp:Lcom/mediatek/apst/util/command/media/MediaSyncOverRsp;
    iget-object v4, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v4, v3}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto :goto_1

    .line 2708
    .end local v3           #rsp:Lcom/mediatek/apst/util/command/media/MediaSyncOverRsp;
    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public handleMessageFeatures(Lcom/mediatek/apst/util/command/BaseCommand;)Z
    .locals 37
    .parameter "cmd"

    .prologue
    .line 1804
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getToken()I

    move-result v28

    .line 1805
    .local v28, reqToken:I
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/mediatek/apst/util/command/message/MessageBatchReq;

    if-eqz v4, :cond_3

    .line 1806
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    new-instance v5, Lcom/mediatek/apst/util/command/message/MessageBatchRsp;

    move/from16 v0, v28

    invoke-direct {v5, v0}, Lcom/mediatek/apst/util/command/message/MessageBatchRsp;-><init>(I)V

    #setter for: Lcom/mediatek/apst/target/service/MainService;->mCommandBatch:Lcom/mediatek/apst/util/command/ICommandBatch;
    invoke-static {v4, v5}, Lcom/mediatek/apst/target/service/MainService;->access$1002(Lcom/mediatek/apst/target/service/MainService;Lcom/mediatek/apst/util/command/ICommandBatch;)Lcom/mediatek/apst/util/command/ICommandBatch;

    move-object/from16 v27, p1

    .line 1807
    check-cast v27, Lcom/mediatek/apst/util/command/message/MessageBatchReq;

    .line 1808
    .local v27, reqMessageBatch:Lcom/mediatek/apst/util/command/message/MessageBatchReq;
    const/4 v15, 0x0

    .line 1809
    .local v15, i:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    const/4 v5, 0x2

    #setter for: Lcom/mediatek/apst/target/service/MainService;->mResponseState:I
    invoke-static {v4, v5}, Lcom/mediatek/apst/target/service/MainService;->access$1102(Lcom/mediatek/apst/target/service/MainService;I)I

    .line 1811
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/command/RequestBatch;->getCommands()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mediatek/apst/util/command/BaseCommand;

    .line 1812
    .local v19, innerCmd:Lcom/mediatek/apst/util/command/BaseCommand;
    add-int/lit8 v15, v15, 0x1

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/command/RequestBatch;->getCommands()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v15, v4, :cond_0

    .line 1815
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    const/4 v5, 0x3

    #setter for: Lcom/mediatek/apst/target/service/MainService;->mResponseState:I
    invoke-static {v4, v5}, Lcom/mediatek/apst/target/service/MainService;->access$1102(Lcom/mediatek/apst/target/service/MainService;I)I

    .line 1817
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->handle(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto :goto_0

    .line 1819
    .end local v19           #innerCmd:Lcom/mediatek/apst/util/command/BaseCommand;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    const/4 v5, 0x1

    #setter for: Lcom/mediatek/apst/target/service/MainService;->mResponseState:I
    invoke-static {v4, v5}, Lcom/mediatek/apst/target/service/MainService;->access$1102(Lcom/mediatek/apst/target/service/MainService;I)I

    .line 2081
    .end local v15           #i:I
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v27           #reqMessageBatch:Lcom/mediatek/apst/util/command/message/MessageBatchReq;
    .end local p1
    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    return v4

    .line 1820
    .restart local p1
    :cond_3
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/mediatek/apst/util/command/message/AsyncGetPhoneListReq;

    if-eqz v4, :cond_4

    .line 1821
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v4

    new-instance v5, Lcom/mediatek/apst/target/service/MainService$CommandHandler$7;

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v5, v0, v1}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$7;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->asyncGetPhoneList(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 1835
    :cond_4
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/mediatek/apst/util/command/message/AsyncGetAllSmsReq;

    if-eqz v4, :cond_5

    .line 1836
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v4

    new-instance v5, Lcom/mediatek/apst/target/service/MainService$CommandHandler$8;

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v5, v0, v1}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$8;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->asyncGetAllSms(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 1848
    :cond_5
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/mediatek/apst/util/command/message/AsyncGetAllMmsReq;

    if-eqz v4, :cond_6

    .line 1849
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v4

    new-instance v5, Lcom/mediatek/apst/target/service/MainService$CommandHandler$9;

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v5, v0, v1}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$9;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->asyncGetAllMms(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 1862
    :cond_6
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/mediatek/apst/util/command/message/GetMmsResourceReq;

    if-eqz v4, :cond_7

    .line 1863
    check-cast p1, Lcom/mediatek/apst/util/command/message/GetMmsResourceReq;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/command/message/GetMmsResourceReq;->getMmsId()J

    move-result-wide v17

    .line 1864
    .local v17, id:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v4

    new-instance v5, Lcom/mediatek/apst/target/service/MainService$CommandHandler$10;

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-wide/from16 v2, v17

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$10;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;IJ)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    move-wide/from16 v0, v17

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getOneMmsResource(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;J)V

    goto/16 :goto_1

    .line 1876
    .end local v17           #id:J
    .restart local p1
    :cond_7
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/mediatek/apst/util/command/message/GetMmsDataReq;

    if-eqz v4, :cond_8

    move-object/from16 v4, p1

    .line 1877
    check-cast v4, Lcom/mediatek/apst/util/command/message/GetMmsDataReq;

    invoke-virtual {v4}, Lcom/mediatek/apst/util/command/message/GetMmsDataReq;->getIsBackup()Z

    move-result v21

    .line 1878
    .local v21, isBackup:Z
    check-cast p1, Lcom/mediatek/apst/util/command/message/GetMmsDataReq;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/command/message/GetMmsDataReq;->getImportList()Ljava/util/LinkedList;

    move-result-object v22

    .line 1879
    .local v22, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v4

    new-instance v5, Lcom/mediatek/apst/target/service/MainService$CommandHandler$11;

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v21

    invoke-direct {v5, v0, v1, v2}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$11;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;IZ)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getMmsData(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;ZLjava/util/LinkedList;)V

    goto/16 :goto_1

    .line 1890
    .end local v21           #isBackup:Z
    .end local v22           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Long;>;"
    .restart local p1
    :cond_8
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/mediatek/apst/util/command/message/ImportSmsReq;

    if-eqz v4, :cond_c

    .line 1891
    new-instance v31, Lcom/mediatek/apst/util/command/message/ImportSmsRsp;

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/message/ImportSmsRsp;-><init>(I)V

    .local v31, rsp:Lcom/mediatek/apst/util/command/message/ImportSmsRsp;
    move-object/from16 v26, p1

    .line 1893
    check-cast v26, Lcom/mediatek/apst/util/command/message/ImportSmsReq;

    .line 1894
    .local v26, req:Lcom/mediatek/apst/util/command/message/ImportSmsReq;
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1895
    .local v33, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMulMessageOb:Lcom/mediatek/apst/target/service/MulMessageObserver;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$1500(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/MulMessageObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/apst/target/service/MulMessageObserver;->stop()V

    .line 1896
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/RawBlockRequest;->getRaw()[B

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v4, v5, v0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->importSms([BLjava/util/ArrayList;)[J

    move-result-object v20

    .line 1898
    .local v20, insertedIds:[J
    if-nez v20, :cond_9

    .line 1899
    const/4 v4, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 1911
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    .line 1913
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1917
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMulMessageOb:Lcom/mediatek/apst/target/service/MulMessageObserver;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$1500(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/MulMessageObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/apst/target/service/MulMessageObserver;->start()V

    goto/16 :goto_1

    .line 1901
    :cond_9
    if-eqz v33, :cond_b

    .line 1902
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [J

    move-object/from16 v36, v0

    .line 1903
    .local v36, threadIds:[J
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_5
    move-object/from16 v0, v36

    array-length v4, v0

    if-ge v15, v4, :cond_a

    .line 1904
    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v36, v15

    .line 1903
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 1906
    :cond_a
    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/message/ImportSmsRsp;->setThreadIds([J)V

    .line 1908
    .end local v15           #i:I
    .end local v36           #threadIds:[J
    :cond_b
    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/message/ImportSmsRsp;->setInsertedIds([J)V

    goto :goto_3

    .line 1914
    :catch_0
    move-exception v14

    .line 1915
    .local v14, e:Ljava/lang/InterruptedException;
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 1918
    .end local v14           #e:Ljava/lang/InterruptedException;
    .end local v20           #insertedIds:[J
    .end local v26           #req:Lcom/mediatek/apst/util/command/message/ImportSmsReq;
    .end local v31           #rsp:Lcom/mediatek/apst/util/command/message/ImportSmsRsp;
    .end local v33           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_c
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/mediatek/apst/util/command/message/ImportMmsReq;

    if-eqz v4, :cond_11

    .line 1919
    new-instance v31, Lcom/mediatek/apst/util/command/message/ImportMmsRsp;

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/message/ImportMmsRsp;-><init>(I)V

    .local v31, rsp:Lcom/mediatek/apst/util/command/message/ImportMmsRsp;
    move-object/from16 v26, p1

    .line 1921
    check-cast v26, Lcom/mediatek/apst/util/command/message/ImportMmsReq;

    .line 1922
    .local v26, req:Lcom/mediatek/apst/util/command/message/ImportMmsReq;
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1923
    .restart local v33       #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMulMessageOb:Lcom/mediatek/apst/target/service/MulMessageObserver;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$1500(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/MulMessageObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/apst/target/service/MulMessageObserver;->getMaxMmsId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_d

    .line 1925
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v5, ">>pdu table is null"

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1926
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMulMessageOb:Lcom/mediatek/apst/target/service/MulMessageObserver;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$1500(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/MulMessageObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/apst/target/service/MulMessageObserver;->onSelfChangeStart()V

    .line 1927
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getMaxMmsIdByInsert()J

    move-result-wide v23

    .line 1930
    .local v23, maxMmsId:J
    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1934
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMulMessageOb:Lcom/mediatek/apst/target/service/MulMessageObserver;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$1500(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/MulMessageObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/apst/target/service/MulMessageObserver;->onSelfChangeDone()V

    .line 1935
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMulMessageOb:Lcom/mediatek/apst/target/service/MulMessageObserver;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$1500(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/MulMessageObserver;

    move-result-object v4

    move-wide/from16 v0, v23

    invoke-virtual {v4, v0, v1}, Lcom/mediatek/apst/target/service/MulMessageObserver;->setMaxMmsId(J)V

    .line 1937
    .end local v23           #maxMmsId:J
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/RawBlockRequest;->getRaw()[B

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v4, v5, v0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->importMms([BLjava/util/ArrayList;)[J

    move-result-object v20

    .line 1938
    .restart local v20       #insertedIds:[J
    if-nez v20, :cond_e

    .line 1939
    const/4 v4, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 1951
    :goto_7
    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/ImportMmsReq;->isIsLastImport()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1952
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 1931
    .end local v20           #insertedIds:[J
    .restart local v23       #maxMmsId:J
    :catch_1
    move-exception v14

    .line 1932
    .restart local v14       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 1941
    .end local v14           #e:Ljava/lang/InterruptedException;
    .end local v23           #maxMmsId:J
    .restart local v20       #insertedIds:[J
    :cond_e
    if-eqz v33, :cond_10

    .line 1942
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [J

    move-object/from16 v36, v0

    .line 1943
    .restart local v36       #threadIds:[J
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_8
    move-object/from16 v0, v36

    array-length v4, v0

    if-ge v15, v4, :cond_f

    .line 1944
    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v36, v15

    .line 1943
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 1946
    :cond_f
    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/message/ImportMmsRsp;->setThreadIds([J)V

    .line 1948
    .end local v15           #i:I
    .end local v36           #threadIds:[J
    :cond_10
    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/message/ImportMmsRsp;->setInsertedIds([J)V

    goto :goto_7

    .line 1954
    .end local v20           #insertedIds:[J
    .end local v26           #req:Lcom/mediatek/apst/util/command/message/ImportMmsReq;
    .end local v31           #rsp:Lcom/mediatek/apst/util/command/message/ImportMmsRsp;
    .end local v33           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_11
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/mediatek/apst/util/command/message/ClearMessageBoxReq;

    if-eqz v4, :cond_12

    .line 1955
    new-instance v31, Lcom/mediatek/apst/util/command/message/ClearMessageBoxRsp;

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/message/ClearMessageBoxRsp;-><init>(I)V

    .local v31, rsp:Lcom/mediatek/apst/util/command/message/ClearMessageBoxRsp;
    move-object/from16 v26, p1

    .line 1957
    check-cast v26, Lcom/mediatek/apst/util/command/message/ClearMessageBoxReq;

    .line 1958
    .local v26, req:Lcom/mediatek/apst/util/command/message/ClearMessageBoxReq;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/ClearMessageBoxReq;->getBox()I

    move-result v5

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/ClearMessageBoxReq;->isKeepLockedMessage()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->clearMessageBox(IZ)I

    move-result v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/message/ClearMessageBoxRsp;->setDeletedCount(I)V

    .line 1961
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 1962
    .end local v26           #req:Lcom/mediatek/apst/util/command/message/ClearMessageBoxReq;
    .end local v31           #rsp:Lcom/mediatek/apst/util/command/message/ClearMessageBoxRsp;
    :cond_12
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/mediatek/apst/util/command/message/DeleteAllMessagesReq;

    if-eqz v4, :cond_13

    .line 1963
    new-instance v31, Lcom/mediatek/apst/util/command/message/DeleteAllMessagesRsp;

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/message/DeleteAllMessagesRsp;-><init>(I)V

    .local v31, rsp:Lcom/mediatek/apst/util/command/message/DeleteAllMessagesRsp;
    move-object/from16 v26, p1

    .line 1965
    check-cast v26, Lcom/mediatek/apst/util/command/message/DeleteAllMessagesReq;

    .line 1966
    .local v26, req:Lcom/mediatek/apst/util/command/message/DeleteAllMessagesReq;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/DeleteAllMessagesReq;->isKeepLockedMessage()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->deleteAllMessages(Z)I

    move-result v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/message/DeleteAllMessagesRsp;->setDeletedCount(I)V

    .line 1969
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 1970
    .end local v26           #req:Lcom/mediatek/apst/util/command/message/DeleteAllMessagesReq;
    .end local v31           #rsp:Lcom/mediatek/apst/util/command/message/DeleteAllMessagesRsp;
    :cond_13
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/mediatek/apst/util/command/message/DeleteMessageReq;

    if-eqz v4, :cond_14

    .line 1971
    new-instance v31, Lcom/mediatek/apst/util/command/message/DeleteMessageRsp;

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/message/DeleteMessageRsp;-><init>(I)V

    .local v31, rsp:Lcom/mediatek/apst/util/command/message/DeleteMessageRsp;
    move-object/from16 v26, p1

    .line 1973
    check-cast v26, Lcom/mediatek/apst/util/command/message/DeleteMessageReq;

    .line 1974
    .local v26, req:Lcom/mediatek/apst/util/command/message/DeleteMessageReq;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/DeleteMessageReq;->getDeleteSmsIds()[J

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/DeleteMessageReq;->getDeleteSmsDates()[J

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->deleteSms([JZ[J)I

    move-result v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/message/DeleteMessageRsp;->setDeleteSmsCount(I)V

    .line 1976
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/DeleteMessageReq;->getDeleteMmsIds()[J

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/DeleteMessageReq;->getDeleteMmsDates()[J

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->deleteMms([JZ[J)I

    move-result v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/message/DeleteMessageRsp;->setDeleteMmsCount(I)V

    .line 1979
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 1980
    .end local v26           #req:Lcom/mediatek/apst/util/command/message/DeleteMessageReq;
    .end local v31           #rsp:Lcom/mediatek/apst/util/command/message/DeleteMessageRsp;
    :cond_14
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/mediatek/apst/util/command/message/MarkMessageAsReadReq;

    if-eqz v4, :cond_15

    .line 1981
    new-instance v31, Lcom/mediatek/apst/util/command/message/MarkMessageAsReadRsp;

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/message/MarkMessageAsReadRsp;-><init>(I)V

    .local v31, rsp:Lcom/mediatek/apst/util/command/message/MarkMessageAsReadRsp;
    move-object/from16 v26, p1

    .line 1983
    check-cast v26, Lcom/mediatek/apst/util/command/message/MarkMessageAsReadReq;

    .line 1984
    .local v26, req:Lcom/mediatek/apst/util/command/message/MarkMessageAsReadReq;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/MarkMessageAsReadReq;->getUpdateSmsIds()[J

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/MarkMessageAsReadReq;->isRead()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->markSmsAsRead([JZ)I

    move-result v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/message/MarkMessageAsReadRsp;->setUpdateSmsCount(I)V

    .line 1986
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/MarkMessageAsReadReq;->getUpdateMmsIds()[J

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/MarkMessageAsReadReq;->isRead()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->markMmsAsRead([JZ)I

    move-result v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/message/MarkMessageAsReadRsp;->setUpdateMmsCount(I)V

    .line 1989
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 1990
    .end local v26           #req:Lcom/mediatek/apst/util/command/message/MarkMessageAsReadReq;
    .end local v31           #rsp:Lcom/mediatek/apst/util/command/message/MarkMessageAsReadRsp;
    :cond_15
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/mediatek/apst/util/command/message/LockMessageReq;

    if-eqz v4, :cond_16

    .line 1991
    new-instance v31, Lcom/mediatek/apst/util/command/message/LockMessageRsp;

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/message/LockMessageRsp;-><init>(I)V

    .local v31, rsp:Lcom/mediatek/apst/util/command/message/LockMessageRsp;
    move-object/from16 v26, p1

    .line 1993
    check-cast v26, Lcom/mediatek/apst/util/command/message/LockMessageReq;

    .line 1994
    .local v26, req:Lcom/mediatek/apst/util/command/message/LockMessageReq;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/LockMessageReq;->getUpdateSmsIds()[J

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/LockMessageReq;->isLocked()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->lockSms([JZ)I

    move-result v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/message/LockMessageRsp;->setUpdateSmsCount(I)V

    .line 1996
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/LockMessageReq;->getUpdateMmsIds()[J

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/LockMessageReq;->isLocked()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->lockMms([JZ)I

    move-result v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/message/LockMessageRsp;->setUpdateMmsCount(I)V

    .line 1999
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 2000
    .end local v26           #req:Lcom/mediatek/apst/util/command/message/LockMessageReq;
    .end local v31           #rsp:Lcom/mediatek/apst/util/command/message/LockMessageRsp;
    :cond_16
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/mediatek/apst/util/command/message/SaveSmsDraftReq;

    if-eqz v4, :cond_18

    .line 2001
    new-instance v31, Lcom/mediatek/apst/util/command/message/SaveSmsDraftRsp;

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/message/SaveSmsDraftRsp;-><init>(I)V

    .local v31, rsp:Lcom/mediatek/apst/util/command/message/SaveSmsDraftRsp;
    move-object/from16 v26, p1

    .line 2003
    check-cast v26, Lcom/mediatek/apst/util/command/message/SaveSmsDraftReq;

    .line 2004
    .local v26, req:Lcom/mediatek/apst/util/command/message/SaveSmsDraftReq;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/SaveSmsDraftReq;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/SaveSmsDraftReq;->getRecipients()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->saveSmsDraft(Ljava/lang/String;[Ljava/lang/String;)Lcom/mediatek/apst/util/entity/message/Sms;

    move-result-object v29

    .line 2006
    .local v29, result:Lcom/mediatek/apst/util/entity/message/Sms;
    if-eqz v29, :cond_17

    .line 2007
    invoke-virtual/range {v29 .. v29}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/mediatek/apst/util/command/message/SaveSmsDraftRsp;->setInsertedId(J)V

    .line 2008
    invoke-virtual/range {v29 .. v29}, Lcom/mediatek/apst/util/entity/message/Message;->getThreadId()J

    move-result-wide v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/mediatek/apst/util/command/message/SaveSmsDraftRsp;->setThreadId(J)V

    .line 2009
    invoke-virtual/range {v29 .. v29}, Lcom/mediatek/apst/util/entity/message/Message;->getDate()J

    move-result-wide v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/mediatek/apst/util/command/message/SaveSmsDraftRsp;->setDate(J)V

    .line 2014
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 2011
    :cond_17
    const/4 v4, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    goto :goto_9

    .line 2015
    .end local v26           #req:Lcom/mediatek/apst/util/command/message/SaveSmsDraftReq;
    .end local v29           #result:Lcom/mediatek/apst/util/entity/message/Sms;
    .end local v31           #rsp:Lcom/mediatek/apst/util/command/message/SaveSmsDraftRsp;
    :cond_18
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/mediatek/apst/util/command/message/SendSmsReq;

    if-eqz v4, :cond_1b

    .line 2016
    new-instance v31, Lcom/mediatek/apst/util/command/message/SendSmsRsp;

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/message/SendSmsRsp;-><init>(I)V

    .local v31, rsp:Lcom/mediatek/apst/util/command/message/SendSmsRsp;
    move-object/from16 v26, p1

    .line 2018
    check-cast v26, Lcom/mediatek/apst/util/command/message/SendSmsReq;

    .line 2019
    .local v26, req:Lcom/mediatek/apst/util/command/message/SendSmsReq;
    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/SendSmsReq;->getSimId()I

    move-result v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/message/SendSmsRsp;->setSimId(I)V

    .line 2020
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mSmsSender:Lcom/mediatek/apst/target/service/SmsSender;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$1600(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/SmsSender;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/apst/target/service/SmsSender;->pause()V

    .line 2021
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/SendSmsReq;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/SendSmsReq;->getRecipients()[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mSmsSender:Lcom/mediatek/apst/target/service/SmsSender;
    invoke-static {v7}, Lcom/mediatek/apst/target/service/MainService;->access$1600(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/SmsSender;

    move-result-object v7

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/SendSmsReq;->getSimId()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->sendSms(Ljava/lang/String;[Ljava/lang/String;Lcom/mediatek/apst/target/service/SmsSender;I)[Lcom/mediatek/apst/util/entity/message/Sms;

    move-result-object v30

    .line 2023
    .local v30, results:[Lcom/mediatek/apst/util/entity/message/Sms;
    if-nez v30, :cond_19

    .line 2024
    const/4 v4, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 2039
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    .line 2040
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mSmsSender:Lcom/mediatek/apst/target/service/SmsSender;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$1600(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/SmsSender;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/apst/target/service/SmsSender;->resume()V

    goto/16 :goto_1

    .line 2026
    :cond_19
    move-object/from16 v0, v30

    array-length v4, v0

    new-array v0, v4, [J

    move-object/from16 v20, v0

    .line 2027
    .restart local v20       #insertedIds:[J
    const-wide/16 v34, -0x1

    .line 2028
    .local v34, threadId:J
    move-object/from16 v0, v30

    array-length v4, v0

    new-array v13, v4, [J

    .line 2029
    .local v13, dates:[J
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_b
    move-object/from16 v0, v30

    array-length v4, v0

    if-ge v15, v4, :cond_1a

    .line 2030
    aget-object v4, v30, v15

    invoke-virtual {v4}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v4

    aput-wide v4, v20, v15

    .line 2031
    aget-object v4, v30, v15

    invoke-virtual {v4}, Lcom/mediatek/apst/util/entity/message/Message;->getThreadId()J

    move-result-wide v34

    .line 2032
    aget-object v4, v30, v15

    invoke-virtual {v4}, Lcom/mediatek/apst/util/entity/message/Message;->getDate()J

    move-result-wide v4

    aput-wide v4, v13, v15

    .line 2029
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 2034
    :cond_1a
    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/message/SendSmsRsp;->setInsertedIds([J)V

    .line 2035
    move-object/from16 v0, v31

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/util/command/message/SendSmsRsp;->setThreadId(J)V

    .line 2036
    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Lcom/mediatek/apst/util/command/message/SendSmsRsp;->setDates([J)V

    goto :goto_a

    .line 2041
    .end local v13           #dates:[J
    .end local v15           #i:I
    .end local v20           #insertedIds:[J
    .end local v26           #req:Lcom/mediatek/apst/util/command/message/SendSmsReq;
    .end local v30           #results:[Lcom/mediatek/apst/util/entity/message/Sms;
    .end local v31           #rsp:Lcom/mediatek/apst/util/command/message/SendSmsRsp;
    .end local v34           #threadId:J
    :cond_1b
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/mediatek/apst/util/command/message/MoveMessageToBoxReq;

    if-eqz v4, :cond_1c

    .line 2042
    new-instance v31, Lcom/mediatek/apst/util/command/message/MoveMessageToBoxRsp;

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/message/MoveMessageToBoxRsp;-><init>(I)V

    .local v31, rsp:Lcom/mediatek/apst/util/command/message/MoveMessageToBoxRsp;
    move-object/from16 v26, p1

    .line 2044
    check-cast v26, Lcom/mediatek/apst/util/command/message/MoveMessageToBoxReq;

    .line 2045
    .local v26, req:Lcom/mediatek/apst/util/command/message/MoveMessageToBoxReq;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/MoveMessageToBoxReq;->getUpdateSmsIds()[J

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/MoveMessageToBoxReq;->getUpdateSmsDates()[J

    move-result-object v7

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/MoveMessageToBoxReq;->getBox()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->moveSmsToBox([JZ[JI)I

    move-result v32

    .line 2048
    .local v32, smsCount:I
    invoke-virtual/range {v31 .. v32}, Lcom/mediatek/apst/util/command/message/MoveMessageToBoxRsp;->setUpdateSmsCount(I)V

    .line 2049
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/MoveMessageToBoxReq;->getUpdateSmsIds()[J

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/MoveMessageToBoxReq;->getUpdateSmsDates()[J

    move-result-object v7

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/MoveMessageToBoxReq;->getBox()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->moveMmsToBox([JZ[JI)I

    move-result v25

    .line 2052
    .local v25, mmsCount:I
    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/message/MoveMessageToBoxRsp;->setUpdateMmsCount(I)V

    .line 2054
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 2055
    .end local v25           #mmsCount:I
    .end local v26           #req:Lcom/mediatek/apst/util/command/message/MoveMessageToBoxReq;
    .end local v31           #rsp:Lcom/mediatek/apst/util/command/message/MoveMessageToBoxRsp;
    .end local v32           #smsCount:I
    :cond_1c
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/mediatek/apst/util/command/message/ResendSmsReq;

    if-eqz v4, :cond_1e

    .line 2056
    new-instance v31, Lcom/mediatek/apst/util/command/message/ResendSmsRsp;

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/message/ResendSmsRsp;-><init>(I)V

    .local v31, rsp:Lcom/mediatek/apst/util/command/message/ResendSmsRsp;
    move-object/from16 v26, p1

    .line 2058
    check-cast v26, Lcom/mediatek/apst/util/command/message/ResendSmsReq;

    .line 2059
    .local v26, req:Lcom/mediatek/apst/util/command/message/ResendSmsReq;
    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/ResendSmsReq;->getSimId()I

    move-result v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/message/ResendSmsRsp;->setSimId(I)V

    .line 2060
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mSmsSender:Lcom/mediatek/apst/target/service/SmsSender;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$1600(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/SmsSender;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/apst/target/service/SmsSender;->pause()V

    .line 2061
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$000(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/ResendSmsReq;->getId()J

    move-result-wide v5

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/ResendSmsReq;->getDate()J

    move-result-wide v7

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/ResendSmsReq;->getBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/ResendSmsReq;->getRecipient()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mSmsSender:Lcom/mediatek/apst/target/service/SmsSender;
    invoke-static {v11}, Lcom/mediatek/apst/target/service/MainService;->access$1600(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/SmsSender;

    move-result-object v11

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/apst/util/command/message/ResendSmsReq;->getSimId()I

    move-result v12

    invoke-virtual/range {v4 .. v12}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->resendSms(JJLjava/lang/String;Ljava/lang/String;Lcom/mediatek/apst/target/service/SmsSender;I)Lcom/mediatek/apst/util/entity/message/Sms;

    move-result-object v29

    .line 2064
    .restart local v29       #result:Lcom/mediatek/apst/util/entity/message/Sms;
    if-nez v29, :cond_1d

    .line 2065
    const/4 v4, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 2066
    const-string v4, "Sms to resend does not exist!"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/ResponseCommand;->setErrorMessage(Ljava/lang/String;)V

    .line 2071
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    .line 2072
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mSmsSender:Lcom/mediatek/apst/target/service/SmsSender;
    invoke-static {v4}, Lcom/mediatek/apst/target/service/MainService;->access$1600(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/SmsSender;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/apst/target/service/SmsSender;->resume()V

    goto/16 :goto_1

    .line 2068
    :cond_1d
    invoke-virtual/range {v29 .. v29}, Lcom/mediatek/apst/util/entity/message/Message;->getDate()J

    move-result-wide v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/mediatek/apst/util/command/message/ResendSmsRsp;->setDate(J)V

    goto :goto_c

    .line 2073
    .end local v26           #req:Lcom/mediatek/apst/util/command/message/ResendSmsReq;
    .end local v29           #result:Lcom/mediatek/apst/util/entity/message/Sms;
    .end local v31           #rsp:Lcom/mediatek/apst/util/command/message/ResendSmsRsp;
    :cond_1e
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/mediatek/apst/util/command/message/BeforeImportMmsReq;

    if-eqz v4, :cond_1f

    .line 2074
    new-instance v31, Lcom/mediatek/apst/util/command/message/BeforeImportMmsRsp;

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/message/BeforeImportMmsRsp;-><init>(I)V

    .line 2077
    .local v31, rsp:Lcom/mediatek/apst/util/command/message/BeforeImportMmsRsp;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_1

    .line 2079
    .end local v31           #rsp:Lcom/mediatek/apst/util/command/message/BeforeImportMmsRsp;
    :cond_1f
    const/4 v4, 0x0

    goto/16 :goto_2
.end method

.method public handleSyncFeatures(Lcom/mediatek/apst/util/command/BaseCommand;)Z
    .locals 11
    .parameter "cmd"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x2

    .line 2126
    invoke-virtual {p1}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getToken()I

    move-result v4

    .line 2127
    .local v4, reqToken:I
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/ContactsSyncStartReq;

    if-eqz v9, :cond_1

    .line 2128
    new-instance v7, Lcom/mediatek/apst/util/command/sync/ContactsSyncStartRsp;

    invoke-direct {v7, v4}, Lcom/mediatek/apst/util/command/sync/ContactsSyncStartRsp;-><init>(I)V

    .line 2130
    .local v7, rsp:Lcom/mediatek/apst/util/command/sync/ContactsSyncStartRsp;
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v8}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->isSyncNeedReinit()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/mediatek/apst/util/command/sync/ContactsSyncStartRsp;->setSyncNeedReinit(Z)V

    .line 2131
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v8}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getLastSyncDate()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/mediatek/apst/util/command/sync/ContactsSyncStartRsp;->setLastSyncDate(J)V

    .line 2133
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v8, v7}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    .line 2303
    .end local v7           #rsp:Lcom/mediatek/apst/util/command/sync/ContactsSyncStartRsp;
    .end local p1
    :goto_0
    const/4 v8, 0x1

    :cond_0
    return v8

    .line 2134
    .restart local p1
    :cond_1
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/ContactsSyncOverReq;

    if-eqz v9, :cond_2

    .line 2135
    new-instance v7, Lcom/mediatek/apst/util/command/sync/ContactsSyncOverRsp;

    invoke-direct {v7, v4}, Lcom/mediatek/apst/util/command/sync/ContactsSyncOverRsp;-><init>(I)V

    .local v7, rsp:Lcom/mediatek/apst/util/command/sync/ContactsSyncOverRsp;
    move-object v3, p1

    .line 2137
    check-cast v3, Lcom/mediatek/apst/util/command/sync/ContactsSyncOverReq;

    .line 2138
    .local v3, req:Lcom/mediatek/apst/util/command/sync/ContactsSyncOverReq;
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v8}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v8

    invoke-virtual {v3}, Lcom/mediatek/apst/util/command/sync/ContactsSyncOverReq;->getSyncDate()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->updateSyncDate(J)Z

    .line 2139
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v8}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getAvailableContactsCount()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/mediatek/apst/util/command/sync/ContactsSyncOverRsp;->setContactsCount(I)V

    .line 2143
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v8, v7}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto :goto_0

    .line 2144
    .end local v3           #req:Lcom/mediatek/apst/util/command/sync/ContactsSyncOverReq;
    .end local v7           #rsp:Lcom/mediatek/apst/util/command/sync/ContactsSyncOverRsp;
    :cond_2
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/ContactsSlowSyncInitReq;

    if-eqz v9, :cond_3

    .line 2145
    new-instance v7, Lcom/mediatek/apst/util/command/sync/ContactsSlowSyncInitRsp;

    invoke-direct {v7, v4}, Lcom/mediatek/apst/util/command/sync/ContactsSlowSyncInitRsp;-><init>(I)V

    .line 2148
    .local v7, rsp:Lcom/mediatek/apst/util/command/sync/ContactsSlowSyncInitRsp;
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v8}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getMaxRawContactsId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/mediatek/apst/util/command/sync/ContactsSlowSyncInitRsp;->setCurrentMaxId(J)V

    .line 2150
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v8, v7}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto :goto_0

    .line 2151
    .end local v7           #rsp:Lcom/mediatek/apst/util/command/sync/ContactsSlowSyncInitRsp;
    :cond_3
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/ContactsSlowSyncAddDetailedContactsReq;

    if-eqz v9, :cond_5

    .line 2152
    new-instance v7, Lcom/mediatek/apst/util/command/sync/ContactsSlowSyncAddDetailedContactsRsp;

    invoke-direct {v7, v4}, Lcom/mediatek/apst/util/command/sync/ContactsSlowSyncAddDetailedContactsRsp;-><init>(I)V

    .line 2156
    .local v7, rsp:Lcom/mediatek/apst/util/command/sync/ContactsSlowSyncAddDetailedContactsRsp;
    check-cast p1, Lcom/mediatek/apst/util/command/sync/ContactsSlowSyncAddDetailedContactsReq;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/apst/util/command/RawBlockRequest;->getRaw()[B

    move-result-object v2

    .line 2158
    .local v2, detailedContactsInRaw:[B
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v8}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->slowSyncAddDetailedContacts([B)[B

    move-result-object v6

    .line 2160
    .local v6, results:[B
    if-nez v6, :cond_4

    .line 2161
    invoke-virtual {v7, v10}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 2166
    :goto_1
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v8, v7}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto :goto_0

    .line 2163
    :cond_4
    invoke-virtual {v7, v6}, Lcom/mediatek/apst/util/command/RawBlockResponse;->setRaw([B)V

    goto :goto_1

    .line 2167
    .end local v2           #detailedContactsInRaw:[B
    .end local v6           #results:[B
    .end local v7           #rsp:Lcom/mediatek/apst/util/command/sync/ContactsSlowSyncAddDetailedContactsRsp;
    .restart local p1
    :cond_5
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/ContactsSlowSyncGetAllRawContactsReq;

    if-eqz v9, :cond_6

    .line 2168
    check-cast p1, Lcom/mediatek/apst/util/command/sync/ContactsSlowSyncGetAllRawContactsReq;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/apst/util/command/sync/ContactsSlowSyncGetAllRawContactsReq;->getContactIdLimit()J

    move-result-wide v0

    .line 2170
    .local v0, contactIdLimit:J
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v8}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v8

    new-instance v9, Lcom/mediatek/apst/target/service/MainService$CommandHandler$13;

    invoke-direct {v9, p0, v4}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$13;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v8, v0, v1, v9, v10}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->slowSyncGetAllRawContacts(JLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 2186
    .end local v0           #contactIdLimit:J
    .restart local p1
    :cond_6
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/ContactsSlowSyncGetAllContactDataReq;

    if-eqz v9, :cond_7

    .line 2187
    check-cast p1, Lcom/mediatek/apst/util/command/sync/ContactsSlowSyncGetAllContactDataReq;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/apst/util/command/sync/ContactsSlowSyncGetAllContactDataReq;->getContactIdLimit()J

    move-result-wide v0

    .line 2189
    .restart local v0       #contactIdLimit:J
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v8}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v8

    new-instance v9, Lcom/mediatek/apst/target/service/MainService$CommandHandler$14;

    invoke-direct {v9, p0, v4}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$14;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v8, v0, v1, v9, v10}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->slowSyncGetAllContactData(JLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 2205
    .end local v0           #contactIdLimit:J
    .restart local p1
    :cond_7
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncInitReq;

    if-eqz v9, :cond_8

    .line 2206
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v8}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v8

    new-instance v9, Lcom/mediatek/apst/target/service/MainService$CommandHandler$15;

    invoke-direct {v9, p0, v4}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$15;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->fastSyncGetAllSyncFlags(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 2220
    :cond_8
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncGetRawContactsReq;

    if-eqz v9, :cond_9

    .line 2221
    check-cast p1, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncGetRawContactsReq;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncGetRawContactsReq;->getRequestedContactIds()[J

    move-result-object v5

    .line 2223
    .local v5, requestedContactsIds:[J
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v8}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v8

    new-instance v9, Lcom/mediatek/apst/target/service/MainService$CommandHandler$16;

    invoke-direct {v9, p0, v4}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$16;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v8, v5, v9, v10}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->fastSyncGetRawContacts([JLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 2239
    .end local v5           #requestedContactsIds:[J
    .restart local p1
    :cond_9
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncGetContactDataReq;

    if-eqz v9, :cond_a

    .line 2240
    check-cast p1, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncGetContactDataReq;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncGetContactDataReq;->getRequestedContactIds()[J

    move-result-object v5

    .line 2242
    .restart local v5       #requestedContactsIds:[J
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v8}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v8

    new-instance v9, Lcom/mediatek/apst/target/service/MainService$CommandHandler$17;

    invoke-direct {v9, p0, v4}, Lcom/mediatek/apst/target/service/MainService$CommandHandler$17;-><init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V

    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v8, v5, v9, v10}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->fastSyncGetContactData([JLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 2258
    .end local v5           #requestedContactsIds:[J
    .restart local p1
    :cond_a
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncAddDetailedContactsReq;

    if-eqz v9, :cond_c

    .line 2259
    new-instance v7, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncAddDetailedContactsRsp;

    invoke-direct {v7, v4}, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncAddDetailedContactsRsp;-><init>(I)V

    .line 2263
    .local v7, rsp:Lcom/mediatek/apst/util/command/sync/ContactsFastSyncAddDetailedContactsRsp;
    check-cast p1, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncAddDetailedContactsReq;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/apst/util/command/RawBlockRequest;->getRaw()[B

    move-result-object v2

    .line 2265
    .restart local v2       #detailedContactsInRaw:[B
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v8}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->fastSyncAddDetailedContacts([B)[B

    move-result-object v6

    .line 2267
    .restart local v6       #results:[B
    if-nez v6, :cond_b

    .line 2268
    invoke-virtual {v7, v10}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 2273
    :goto_2
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v8, v7}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_0

    .line 2270
    :cond_b
    invoke-virtual {v7, v6}, Lcom/mediatek/apst/util/command/RawBlockResponse;->setRaw([B)V

    goto :goto_2

    .line 2274
    .end local v2           #detailedContactsInRaw:[B
    .end local v6           #results:[B
    .end local v7           #rsp:Lcom/mediatek/apst/util/command/sync/ContactsFastSyncAddDetailedContactsRsp;
    .restart local p1
    :cond_c
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncUpdateDetailedContactsReq;

    if-eqz v9, :cond_e

    .line 2275
    new-instance v7, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncUpdateDetailedContactsRsp;

    invoke-direct {v7, v4}, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncUpdateDetailedContactsRsp;-><init>(I)V

    .line 2279
    .local v7, rsp:Lcom/mediatek/apst/util/command/sync/ContactsFastSyncUpdateDetailedContactsRsp;
    check-cast p1, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncUpdateDetailedContactsReq;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/apst/util/command/RawBlockRequest;->getRaw()[B

    move-result-object v2

    .line 2281
    .restart local v2       #detailedContactsInRaw:[B
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v8}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->fastSyncUpdateDetailedContacts([B)[B

    move-result-object v6

    .line 2283
    .restart local v6       #results:[B
    if-nez v6, :cond_d

    .line 2284
    invoke-virtual {v7, v10}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 2289
    :goto_3
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v8, v7}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_0

    .line 2286
    :cond_d
    invoke-virtual {v7, v6}, Lcom/mediatek/apst/util/command/RawBlockResponse;->setRaw([B)V

    goto :goto_3

    .line 2290
    .end local v2           #detailedContactsInRaw:[B
    .end local v6           #results:[B
    .end local v7           #rsp:Lcom/mediatek/apst/util/command/sync/ContactsFastSyncUpdateDetailedContactsRsp;
    .restart local p1
    :cond_e
    instance-of v9, p1, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncDeleteContactsReq;

    if-eqz v9, :cond_0

    .line 2291
    new-instance v7, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncDeleteContactsRsp;

    invoke-direct {v7, v4}, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncDeleteContactsRsp;-><init>(I)V

    .local v7, rsp:Lcom/mediatek/apst/util/command/sync/ContactsFastSyncDeleteContactsRsp;
    move-object v3, p1

    .line 2294
    check-cast v3, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncDeleteContactsReq;

    .line 2295
    .local v3, req:Lcom/mediatek/apst/util/command/sync/ContactsFastSyncDeleteContactsReq;
    iget-object v9, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mContactsProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    invoke-static {v9}, Lcom/mediatek/apst/target/service/MainService;->access$1300(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v9

    invoke-virtual {v3}, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncDeleteContactsReq;->getDeleteIds()[J

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->fastDeleteContactsSourcedOnPhone([JZ)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncDeleteContactsRsp;->setDeleteCount(I)V

    .line 2299
    iget-object v8, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v8, v7}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    goto/16 :goto_0
.end method
