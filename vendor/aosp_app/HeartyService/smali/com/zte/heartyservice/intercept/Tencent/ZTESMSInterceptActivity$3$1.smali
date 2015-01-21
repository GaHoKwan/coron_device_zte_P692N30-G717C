.class Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;
.super Ljava/lang/Object;
.source "ZTESMSInterceptActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;

    iput p2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 209
    packed-switch p2, :pswitch_data_0

    .line 238
    :goto_0
    return-void

    .line 211
    :pswitch_0
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mSmsLogDao:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$1200(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    move-result-object v4

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->val$position:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    invoke-virtual {v4, v3}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->recover(Lcom/zte/heartyservice/intercept/Tencent/SmsLog;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 214
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$300(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;

    iget-object v4, v4, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->setListData(Ljava/util/ArrayList;)V

    .line 215
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;

    iget-object v4, v4, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$300(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 216
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$300(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->notifyDataSetChanged()V

    .line 217
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    iget-object v1, v3, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->phonenum:Ljava/lang/String;

    .line 221
    .local v1, number:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 222
    .local v2, telUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 224
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$1300(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 225
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_0

    .line 228
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #number:Ljava/lang/String;
    .end local v2           #telUri:Landroid/net/Uri;
    :pswitch_2
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mSmsLogDao:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$1200(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    move-result-object v4

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->val$position:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    invoke-virtual {v4, v3}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->delete(Lcom/zte/heartyservice/intercept/Tencent/SmsLog;)Z

    .line 229
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 230
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$300(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;

    iget-object v4, v4, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->setListData(Ljava/util/ArrayList;)V

    .line 231
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;

    iget-object v4, v4, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$300(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 232
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$300(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->notifyDataSetChanged()V

    .line 233
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
