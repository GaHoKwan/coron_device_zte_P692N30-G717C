.class Lcom/mediatek/FMRadio/FMRadioEngineer$6;
.super Ljava/lang/Object;
.source "FMRadioEngineer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioEngineer;->showToast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioEngineer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 913
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$6;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iput p2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$6;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 915
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$6;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$6;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$6;->val$resId:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$3602(Lcom/mediatek/FMRadio/FMRadioEngineer;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 916
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$6;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$3600(Lcom/mediatek/FMRadio/FMRadioEngineer;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 917
    return-void
.end method
