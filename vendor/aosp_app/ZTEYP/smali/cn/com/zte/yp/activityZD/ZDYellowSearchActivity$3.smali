.class Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$3;
.super Ljava/lang/Object;
.source "ZDYellowSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;


# direct methods
.method constructor <init>(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$3;->this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 245
    new-instance v3, Lcn/com/zte/yp/activityZD/KeyboardUtil;

    iget-object v4, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$3;->this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    #getter for: Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->act:Landroid/app/Activity;
    invoke-static {v4}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->access$400(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$3;->this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    #getter for: Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->ctx:Landroid/content/Context;
    invoke-static {v5}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->access$500(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$3;->this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    #getter for: Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->search_text:Landroid/widget/EditText;
    invoke-static {v6}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->access$600(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcn/com/zte/yp/activityZD/KeyboardUtil;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/EditText;)V

    invoke-virtual {v3}, Lcn/com/zte/yp/activityZD/KeyboardUtil;->showKeyboard()V

    .line 246
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 270
    :cond_0
    :goto_0
    return v2

    .line 248
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 249
    .local v1, curX:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x33

    if-le v1, v3, :cond_0

    iget-object v3, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$3;->this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    #getter for: Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->search_text:Landroid/widget/EditText;
    invoke-static {v3}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->access$600(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 251
    iget-object v3, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$3;->this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    #getter for: Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->search_text:Landroid/widget/EditText;
    invoke-static {v3}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->access$600(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v3, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$3;->this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    #getter for: Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->search_text:Landroid/widget/EditText;
    invoke-static {v3}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->access$600(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    .line 257
    .local v0, cacheInputType:I
    iget-object v3, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$3;->this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    #getter for: Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->search_text:Landroid/widget/EditText;
    invoke-static {v3}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->access$600(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 260
    iget-object v2, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$3;->this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    #getter for: Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->search_text:Landroid/widget/EditText;
    invoke-static {v2}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->access$600(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 263
    iget-object v2, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$3;->this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    #getter for: Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->search_text:Landroid/widget/EditText;
    invoke-static {v2}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->access$600(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 264
    const/4 v2, 0x1

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
