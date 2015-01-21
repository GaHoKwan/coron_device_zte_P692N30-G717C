.class Lcom/mediatek/mms/op09/OP09MmsComposeExt$4;
.super Ljava/lang/Object;
.source "OP09MmsComposeExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mms/op09/OP09MmsComposeExt;->closeActivity(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mms/op09/OP09MmsComposeExt;


# direct methods
.method constructor <init>(Lcom/mediatek/mms/op09/OP09MmsComposeExt;)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$4;->this$0:Lcom/mediatek/mms/op09/OP09MmsComposeExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$4;->this$0:Lcom/mediatek/mms/op09/OP09MmsComposeExt;

    #getter for: Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->access$300(Lcom/mediatek/mms/op09/OP09MmsComposeExt;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 437
    return-void
.end method
