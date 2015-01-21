.class Lcom/mediatek/mms/op09/MmsFailedNotifyExt$1;
.super Landroid/os/Handler;
.source "MmsFailedNotifyExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mms/op09/MmsFailedNotifyExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mms/op09/MmsFailedNotifyExt;


# direct methods
.method constructor <init>(Lcom/mediatek/mms/op09/MmsFailedNotifyExt;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt$1;->this$0:Lcom/mediatek/mms/op09/MmsFailedNotifyExt;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, str:Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 92
    :goto_0
    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt$1;->this$0:Lcom/mediatek/mms/op09/MmsFailedNotifyExt;

    #getter for: Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->access$100(Lcom/mediatek/mms/op09/MmsFailedNotifyExt;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 95
    :cond_0
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #str:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 62
    .restart local v0       #str:Ljava/lang/String;
    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt$1;->this$0:Lcom/mediatek/mms/op09/MmsFailedNotifyExt;

    #getter for: Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->access$000(Lcom/mediatek/mms/op09/MmsFailedNotifyExt;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    goto :goto_0

    .line 69
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt$1;->this$0:Lcom/mediatek/mms/op09/MmsFailedNotifyExt;

    #getter for: Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->access$000(Lcom/mediatek/mms/op09/MmsFailedNotifyExt;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    goto :goto_0

    .line 73
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt$1;->this$0:Lcom/mediatek/mms/op09/MmsFailedNotifyExt;

    #getter for: Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->access$000(Lcom/mediatek/mms/op09/MmsFailedNotifyExt;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    goto :goto_0

    .line 77
    :pswitch_4
    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt$1;->this$0:Lcom/mediatek/mms/op09/MmsFailedNotifyExt;

    #getter for: Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->access$000(Lcom/mediatek/mms/op09/MmsFailedNotifyExt;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    goto :goto_0

    .line 81
    :pswitch_5
    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt$1;->this$0:Lcom/mediatek/mms/op09/MmsFailedNotifyExt;

    #getter for: Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->access$000(Lcom/mediatek/mms/op09/MmsFailedNotifyExt;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    goto :goto_0

    .line 85
    :pswitch_6
    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsFailedNotifyExt$1;->this$0:Lcom/mediatek/mms/op09/MmsFailedNotifyExt;

    #getter for: Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/mediatek/mms/op09/MmsFailedNotifyExt;->access$000(Lcom/mediatek/mms/op09/MmsFailedNotifyExt;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
