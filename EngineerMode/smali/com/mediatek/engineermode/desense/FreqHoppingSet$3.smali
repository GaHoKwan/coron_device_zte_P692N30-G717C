.class Lcom/mediatek/engineermode/desense/FreqHoppingSet$3;
.super Ljava/lang/Object;
.source "FreqHoppingSet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/desense/FreqHoppingSet;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/desense/FreqHoppingSet;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/desense/FreqHoppingSet;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet$3;->this$0:Lcom/mediatek/engineermode/desense/FreqHoppingSet;

    iput p2, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet$3;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet$3;->this$0:Lcom/mediatek/engineermode/desense/FreqHoppingSet;

    iget v1, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet$3;->val$id:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 182
    return-void
.end method
