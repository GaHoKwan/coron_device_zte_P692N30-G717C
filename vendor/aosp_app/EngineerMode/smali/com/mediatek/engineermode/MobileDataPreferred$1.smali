.class Lcom/mediatek/engineermode/MobileDataPreferred$1;
.super Ljava/lang/Object;
.source "MobileDataPreferred.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/MobileDataPreferred;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/MobileDataPreferred;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/MobileDataPreferred;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mediatek/engineermode/MobileDataPreferred$1;->this$0:Lcom/mediatek/engineermode/MobileDataPreferred;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/engineermode/MobileDataPreferred$1;->this$0:Lcom/mediatek/engineermode/MobileDataPreferred;

    #getter for: Lcom/mediatek/engineermode/MobileDataPreferred;->mMobileDataPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/mediatek/engineermode/MobileDataPreferred;->access$000(Lcom/mediatek/engineermode/MobileDataPreferred;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 100
    return-void
.end method
