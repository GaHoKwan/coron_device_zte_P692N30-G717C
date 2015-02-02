.class public Lcom/amoi/AmoiEngineerMode/base/RecordBase$RecordHandler;
.super Landroid/os/Handler;
.source "RecordBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/base/RecordBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RecordHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/RecordBase;


# direct methods
.method protected constructor <init>(Lcom/amoi/AmoiEngineerMode/base/RecordBase;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase$RecordHandler;->this$0:Lcom/amoi/AmoiEngineerMode/base/RecordBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 267
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 272
    :goto_0
    return-void

    .line 269
    :pswitch_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase$RecordHandler;->this$0:Lcom/amoi/AmoiEngineerMode/base/RecordBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->textView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase$RecordHandler;->this$0:Lcom/amoi/AmoiEngineerMode/base/RecordBase;

    iget-object v2, v2, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase$RecordHandler;->this$0:Lcom/amoi/AmoiEngineerMode/base/RecordBase;

    iget v2, v2, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->seconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/RecordBase$RecordHandler;->this$0:Lcom/amoi/AmoiEngineerMode/base/RecordBase;

    iget-object v2, v2, Lcom/amoi/AmoiEngineerMode/base/RecordBase;->STRING_SECOND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
