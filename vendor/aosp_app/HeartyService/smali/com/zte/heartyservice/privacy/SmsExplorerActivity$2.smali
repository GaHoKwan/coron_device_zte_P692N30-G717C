.class Lcom/zte/heartyservice/privacy/SmsExplorerActivity$2;
.super Ljava/lang/Object;
.source "SmsExplorerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->eventInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$2;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 172
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$2;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$000(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "send message"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$2;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->currentUserNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$800(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$2;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->smsEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$900(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 175
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkIsDataSpaceNotEnoughAndShowToast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 188
    .local v0, date:J
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$2;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->currentUserNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$800(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$2;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->smsEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$900(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v2, v3, v0, v1, v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->sendSms(Ljava/lang/String;Ljava/lang/String;JI)Z

    .line 190
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$2;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->smsEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$900(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$2;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$400(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getLong2YearMonthDayString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$2;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->name:Ljava/lang/String;
    invoke-static {v5}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$100(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$2;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->ac:Ljava/lang/String;
    invoke-static {v6}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$200(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getSms(Ljava/lang/String;Ljava/lang/String;J)Lcom/zte/heartyservice/common/datatype/CommonListItem;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->addSubjectDynamic(Ljava/lang/String;Lcom/zte/heartyservice/common/datatype/CommonListItem;)V

    goto :goto_0
.end method
