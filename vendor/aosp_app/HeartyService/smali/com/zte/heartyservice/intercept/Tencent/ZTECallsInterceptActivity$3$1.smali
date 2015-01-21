.class Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;
.super Ljava/lang/Object;
.source "ZTECallsInterceptActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;

    iput p2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 207
    packed-switch p2, :pswitch_data_0

    .line 235
    :goto_0
    return-void

    .line 209
    :pswitch_0
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mCallLogDao:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$1300(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    move-result-object v4

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->val$position:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    invoke-virtual {v4, v3}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->recover(Lcom/zte/heartyservice/intercept/Tencent/CallLogx;)Z

    .line 210
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 211
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$300(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;

    iget-object v4, v4, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->setListData(Ljava/util/ArrayList;)V

    .line 212
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;

    iget-object v4, v4, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$300(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 213
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$300(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->notifyDataSetChanged()V

    .line 214
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 217
    :pswitch_1
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    iget-object v1, v3, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->phonenum:Ljava/lang/String;

    .line 218
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

    .line 219
    .local v2, telUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 221
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$1400(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 222
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_0

    .line 225
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #number:Ljava/lang/String;
    .end local v2           #telUri:Landroid/net/Uri;
    :pswitch_2
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mCallLogDao:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$1300(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    move-result-object v4

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->val$position:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    invoke-virtual {v4, v3}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->delete(Lcom/zte/heartyservice/intercept/Tencent/CallLogx;)Z

    .line 226
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 227
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$300(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;

    iget-object v4, v4, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->setListData(Ljava/util/ArrayList;)V

    .line 228
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;

    iget-object v4, v4, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$300(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 229
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mIntercepterCallLogAdapter:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$300(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->notifyDataSetChanged()V

    .line 230
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
