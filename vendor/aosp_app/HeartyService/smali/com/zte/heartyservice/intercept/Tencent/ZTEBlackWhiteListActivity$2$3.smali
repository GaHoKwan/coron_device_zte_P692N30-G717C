.class Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;
.super Ljava/lang/Object;
.source "ZTEBlackWhiteListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 147
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mType:I
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$300(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)I

    move-result v6

    if-nez v6, :cond_5

    .line 148
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontacts:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 149
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontacts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 150
    .local v1, data_item:Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, datas:[Ljava/lang/String;
    aget-object v4, v2, v8

    .line 152
    .local v4, phoneNum:Ljava/lang/String;
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getSMSByAdress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 153
    .local v5, smsdata:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getCallLogByAdress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 154
    .local v0, calldata:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSmsLogDao:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$500(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->insert(Ljava/util/List;)Z

    .line 155
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mCallLogDao:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$600(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->insert(Ljava/util/List;)Z

    .line 156
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->deleteCallLogByAddress(Ljava/lang/String;)Z

    .line 157
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 158
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->deleteSMSByAddress(Ljava/lang/String;)Z

    goto :goto_0

    .line 162
    .end local v0           #calldata:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    .end local v1           #data_item:Ljava/lang/String;
    .end local v2           #datas:[Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #phoneNum:Ljava/lang/String;
    .end local v5           #smsdata:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    :cond_1
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontactSingal:Lcom/zte/heartyservice/intercept/Tencent/Contact;

    if-eqz v6, :cond_4

    .line 163
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontactSingal:Lcom/zte/heartyservice/intercept/Tencent/Contact;

    iget-boolean v6, v6, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForCalling:Z

    if-eqz v6, :cond_2

    .line 164
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v7, v7, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iget-object v7, v7, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontactSingal:Lcom/zte/heartyservice/intercept/Tencent/Contact;

    iget-object v7, v7, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getCallLogByAdress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 165
    .restart local v0       #calldata:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mCallLogDao:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$600(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->insert(Ljava/util/List;)Z

    .line 166
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v7, v7, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iget-object v7, v7, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontactSingal:Lcom/zte/heartyservice/intercept/Tencent/Contact;

    iget-object v7, v7, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->deleteCallLogByAddress(Ljava/lang/String;)Z

    .line 168
    .end local v0           #calldata:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    :cond_2
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontactSingal:Lcom/zte/heartyservice/intercept/Tencent/Contact;

    iget-boolean v6, v6, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForSMS:Z

    if-eqz v6, :cond_3

    .line 169
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v7, v7, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iget-object v7, v7, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontactSingal:Lcom/zte/heartyservice/intercept/Tencent/Contact;

    iget-object v7, v7, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getSMSByAdress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 170
    .restart local v5       #smsdata:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSmsLogDao:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$500(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->insert(Ljava/util/List;)Z

    .line 171
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_3

    .line 172
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v7, v7, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iget-object v7, v7, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontactSingal:Lcom/zte/heartyservice/intercept/Tencent/Contact;

    iget-object v7, v7, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->deleteSMSByAddress(Ljava/lang/String;)Z

    .line 175
    .end local v5           #smsdata:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    :cond_3
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iput-object v9, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontactSingal:Lcom/zte/heartyservice/intercept/Tencent/Contact;

    .line 198
    :cond_4
    :goto_1
    return-void

    .line 177
    :cond_5
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mType:I
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$300(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 179
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontacts:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    .line 180
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontacts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 181
    .restart local v1       #data_item:Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 182
    .restart local v2       #datas:[Ljava/lang/String;
    aget-object v4, v2, v8

    .line 183
    .restart local v4       #phoneNum:Ljava/lang/String;
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getSMSByAdress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 184
    .restart local v5       #smsdata:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getCallLogByAdress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 185
    .restart local v0       #calldata:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSmsLogDao:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$500(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->recover(Ljava/util/List;)Z

    .line 186
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mCallLogDao:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$600(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->recover(Ljava/util/List;)Z

    goto :goto_2

    .line 189
    .end local v0           #calldata:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    .end local v1           #data_item:Ljava/lang/String;
    .end local v2           #datas:[Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #phoneNum:Ljava/lang/String;
    .end local v5           #smsdata:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    :cond_6
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontactSingal:Lcom/zte/heartyservice/intercept/Tencent/Contact;

    if-eqz v6, :cond_4

    .line 190
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v7, v7, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iget-object v7, v7, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontactSingal:Lcom/zte/heartyservice/intercept/Tencent/Contact;

    iget-object v7, v7, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getSMSByAdress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 191
    .restart local v5       #smsdata:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v7, v7, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iget-object v7, v7, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontactSingal:Lcom/zte/heartyservice/intercept/Tencent/Contact;

    iget-object v7, v7, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getCallLogByAdress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 192
    .restart local v0       #calldata:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSmsLogDao:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$500(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->recover(Ljava/util/List;)Z

    .line 193
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mCallLogDao:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$600(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->recover(Ljava/util/List;)Z

    .line 194
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$3;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v6, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iput-object v9, v6, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontactSingal:Lcom/zte/heartyservice/intercept/Tencent/Contact;

    goto/16 :goto_1
.end method
