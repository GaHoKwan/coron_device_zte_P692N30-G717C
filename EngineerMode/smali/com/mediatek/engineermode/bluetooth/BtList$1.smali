.class Lcom/mediatek/engineermode/bluetooth/BtList$1;
.super Ljava/lang/Object;
.source "BtList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/bluetooth/BtList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/bluetooth/BtList;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/bluetooth/BtList;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$1;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtList$1;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 160
    return-void
.end method
