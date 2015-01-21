.class final Lcom/mediatek/mms/op09/OP09MmsComposeExt$ContextMenuClickListener;
.super Ljava/lang/Object;
.source "OP09MmsComposeExt.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mms/op09/OP09MmsComposeExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContextMenuClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mms/op09/OP09MmsComposeExt;


# direct methods
.method private constructor <init>(Lcom/mediatek/mms/op09/OP09MmsComposeExt;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$ContextMenuClickListener;->this$0:Lcom/mediatek/mms/op09/OP09MmsComposeExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/mms/op09/OP09MmsComposeExt;Lcom/mediatek/mms/op09/OP09MmsComposeExt$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/mediatek/mms/op09/OP09MmsComposeExt$ContextMenuClickListener;-><init>(Lcom/mediatek/mms/op09/OP09MmsComposeExt;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 357
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 365
    const/4 v0, 0x0

    .line 367
    :goto_0
    return v0

    .line 360
    :pswitch_0
    const-string v0, "Mms/Op09MmsComposeExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContextMenuClickListener: click MENU_SPLIT_MESSAGE, messageGroupId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$ContextMenuClickListener;->this$0:Lcom/mediatek/mms/op09/OP09MmsComposeExt;

    #getter for: Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mMessageGroupId:J
    invoke-static {v2}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->access$000(Lcom/mediatek/mms/op09/OP09MmsComposeExt;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$ContextMenuClickListener;->this$0:Lcom/mediatek/mms/op09/OP09MmsComposeExt;

    iget-object v1, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$ContextMenuClickListener;->this$0:Lcom/mediatek/mms/op09/OP09MmsComposeExt;

    #getter for: Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->access$100(Lcom/mediatek/mms/op09/OP09MmsComposeExt;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$ContextMenuClickListener;->this$0:Lcom/mediatek/mms/op09/OP09MmsComposeExt;

    #getter for: Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mMessageGroupId:J
    invoke-static {v2}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->access$000(Lcom/mediatek/mms/op09/OP09MmsComposeExt;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->splitSingleMessage(Landroid/content/Context;J)V

    .line 367
    const/4 v0, 0x1

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x136
        :pswitch_0
    .end packed-switch
.end method
