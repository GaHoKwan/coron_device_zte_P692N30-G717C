.class Lcom/mediatek/engineermode/io/Gpio$1;
.super Ljava/lang/Object;
.source "Gpio.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/io/Gpio;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/io/Gpio;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/io/Gpio;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/mediatek/engineermode/io/Gpio$1;->this$0:Lcom/mediatek/engineermode/io/Gpio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mediatek/engineermode/io/Gpio$1;->this$0:Lcom/mediatek/engineermode/io/Gpio;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 107
    return-void
.end method
