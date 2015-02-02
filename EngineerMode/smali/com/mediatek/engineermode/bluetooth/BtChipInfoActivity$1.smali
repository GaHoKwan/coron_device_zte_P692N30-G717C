.class Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$1;
.super Ljava/lang/Object;
.source "BtChipInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 134
    return-void
.end method
