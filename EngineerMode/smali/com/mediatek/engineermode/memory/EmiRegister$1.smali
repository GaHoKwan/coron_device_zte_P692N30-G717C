.class Lcom/mediatek/engineermode/memory/EmiRegister$1;
.super Ljava/lang/Object;
.source "EmiRegister.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/memory/EmiRegister;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/memory/EmiRegister;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/memory/EmiRegister;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/engineermode/memory/EmiRegister$1;->this$0:Lcom/mediatek/engineermode/memory/EmiRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/engineermode/memory/EmiRegister$1;->this$0:Lcom/mediatek/engineermode/memory/EmiRegister;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 85
    return-void
.end method
