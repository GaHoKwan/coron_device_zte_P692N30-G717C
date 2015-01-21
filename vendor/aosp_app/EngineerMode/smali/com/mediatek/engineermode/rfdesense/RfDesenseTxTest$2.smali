.class Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest$2;
.super Ljava/lang/Object;
.source "RfDesenseTxTest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 152
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;

    #calls: Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;->enterFlightMode()V
    invoke-static {v0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;->access$100(Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;)V

    .line 155
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 156
    return-void
.end method
