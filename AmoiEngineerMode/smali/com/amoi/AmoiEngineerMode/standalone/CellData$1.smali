.class Lcom/amoi/AmoiEngineerMode/standalone/CellData$1;
.super Landroid/os/Handler;
.source "CellData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/standalone/CellData;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/standalone/CellData;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/standalone/CellData;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/CellData;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 64
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 71
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 72
    return-void

    .line 66
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/CellData;

    const v3, 0x7f060067

    invoke-virtual {v2, v3}, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/CellData;

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/CellData;->dBm:I
    invoke-static {v2}, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->access$000(Lcom/amoi/AmoiEngineerMode/standalone/CellData;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dBm,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/CellData;

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/CellData;->gsmSignalStrength:I
    invoke-static {v2}, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->access$100(Lcom/amoi/AmoiEngineerMode/standalone/CellData;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " asu"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, res:Ljava/lang/String;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData$1;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/CellData;

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->access$200(Lcom/amoi/AmoiEngineerMode/standalone/CellData;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
