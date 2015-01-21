.class Lcom/ztesdupdate/SDcardUpdateActivity$6;
.super Landroid/os/Handler;
.source "SDcardUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ztesdupdate/SDcardUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ztesdupdate/SDcardUpdateActivity;


# direct methods
.method constructor <init>(Lcom/ztesdupdate/SDcardUpdateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/ztesdupdate/SDcardUpdateActivity$6;->this$0:Lcom/ztesdupdate/SDcardUpdateActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private checkImageFile()Z
    .locals 4

    .prologue
    .line 343
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/ztesdupdate/SDcardUpdateActivity;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, updateFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    const-string v1, "SDcardUpdateActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/ztesdupdate/SDcardUpdateActivity;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] checkImageFile():check image file pass"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v1, 0x1

    .line 349
    :goto_0
    return v1

    .line 348
    :cond_0
    const-string v1, "SDcardUpdateActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/ztesdupdate/SDcardUpdateActivity;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] checkImageFile():error no such file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkImageFile_sdcard2()Z
    .locals 3

    .prologue
    .line 352
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/ztesdupdate/SDcardUpdateActivity;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 353
    .local v0, updateFile2:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    const-string v1, "SDcardUpdateActivity"

    const-string v2, "[External SD card] checkImageFile():check image file pass"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v1, 0x1

    .line 358
    :goto_0
    return v1

    .line 357
    :cond_0
    const-string v1, "SDcardUpdateActivity"

    const-string v2, "[External SD card] checkImageFile():error no such file"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 303
    const-string v0, "SDcardUpdateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive a message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 336
    const-string v0, "SDcardUpdateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Error] error message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 340
    return-void

    .line 306
    :pswitch_0
    const-string v0, "SDcardUpdateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ztesdupdate/SDcardUpdateActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] handler message MESSAGE_CHECK_IMAGEFILE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/ztesdupdate/SDcardUpdateActivity$6;->this$0:Lcom/ztesdupdate/SDcardUpdateActivity;

    invoke-virtual {v0}, Lcom/ztesdupdate/SDcardUpdateActivity;->checkbatterystatusOK()Z

    move-result v0

    if-ne v3, v0, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/ztesdupdate/SDcardUpdateActivity$6;->checkImageFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/ztesdupdate/SDcardUpdateActivity$6;->this$0:Lcom/ztesdupdate/SDcardUpdateActivity;

    #calls: Lcom/ztesdupdate/SDcardUpdateActivity;->onshowDialog(I)V
    invoke-static {v0, v3}, Lcom/ztesdupdate/SDcardUpdateActivity;->access$200(Lcom/ztesdupdate/SDcardUpdateActivity;I)V

    goto :goto_0

    .line 311
    :cond_1
    invoke-static {}, Lcom/ztesdupdate/SDcardUpdateActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "External SD card"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/ztesdupdate/SDcardUpdateActivity$6;->this$0:Lcom/ztesdupdate/SDcardUpdateActivity;

    #calls: Lcom/ztesdupdate/SDcardUpdateActivity;->onshowDialog(I)V
    invoke-static {v0, v4}, Lcom/ztesdupdate/SDcardUpdateActivity;->access$200(Lcom/ztesdupdate/SDcardUpdateActivity;I)V

    goto :goto_0

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/ztesdupdate/SDcardUpdateActivity$6;->this$0:Lcom/ztesdupdate/SDcardUpdateActivity;

    const/4 v1, 0x2

    #calls: Lcom/ztesdupdate/SDcardUpdateActivity;->onshowDialog(I)V
    invoke-static {v0, v1}, Lcom/ztesdupdate/SDcardUpdateActivity;->access$200(Lcom/ztesdupdate/SDcardUpdateActivity;I)V

    goto :goto_0

    .line 320
    :pswitch_1
    const-string v0, "SDcardUpdateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[External SD card] handler message MESSAGE_CHECK_IMAGEFILE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/ztesdupdate/SDcardUpdateActivity$6;->this$0:Lcom/ztesdupdate/SDcardUpdateActivity;

    invoke-virtual {v0}, Lcom/ztesdupdate/SDcardUpdateActivity;->checkbatterystatusOK()Z

    move-result v0

    if-ne v3, v0, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/ztesdupdate/SDcardUpdateActivity$6;->checkImageFile_sdcard2()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    iget-object v0, p0, Lcom/ztesdupdate/SDcardUpdateActivity$6;->this$0:Lcom/ztesdupdate/SDcardUpdateActivity;

    #calls: Lcom/ztesdupdate/SDcardUpdateActivity;->onshowDialog(I)V
    invoke-static {v0, v3}, Lcom/ztesdupdate/SDcardUpdateActivity;->access$200(Lcom/ztesdupdate/SDcardUpdateActivity;I)V

    goto/16 :goto_0

    .line 329
    :cond_3
    iget-object v0, p0, Lcom/ztesdupdate/SDcardUpdateActivity$6;->this$0:Lcom/ztesdupdate/SDcardUpdateActivity;

    #calls: Lcom/ztesdupdate/SDcardUpdateActivity;->onshowDialog(I)V
    invoke-static {v0, v4}, Lcom/ztesdupdate/SDcardUpdateActivity;->access$200(Lcom/ztesdupdate/SDcardUpdateActivity;I)V

    goto/16 :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
