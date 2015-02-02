.class Lcom/mediatek/engineermode/camera/Camera$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/camera/Camera;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/camera/Camera;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/Camera$1;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/Camera$1;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    const/4 v1, 0x1

    shl-int/2addr v1, p2

    #setter for: Lcom/mediatek/engineermode/camera/Camera;->mStep:I
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/camera/Camera;->access$002(Lcom/mediatek/engineermode/camera/Camera;I)I

    .line 228
    return-void
.end method
