.class public Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;
.super Landroid/os/AsyncTask;
.source "SDCardBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/base/SDCardBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SDCardTestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final BEGIN:I = 0x0

.field private static final NOT_FOUND:I = 0x1

.field private static final PLAYING:I = 0x3

.field private static final WRITE_ERROR:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;


# direct methods
.method protected constructor <init>(Lcom/amoi/AmoiEngineerMode/base/SDCardBase;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 234
    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->publishProgress([Ljava/lang/Object;)V

    .line 235
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;

    iget-object v1, v1, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;

    iget-object v1, v1, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 240
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;

    invoke-virtual {v1}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->writeSDCard()V
    :try_end_0
    .catch Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardWriteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    new-array v1, v4, [Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->publishProgress([Ljava/lang/Object;)V

    .line 249
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;

    invoke-virtual {v1}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->playMusic()V

    .line 250
    :goto_0
    return-object v5

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardNotFoundException;
    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 244
    .end local v0           #e:Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardNotFoundException;
    :catch_1
    move-exception v0

    .line 245
    .local v0, e:Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardWriteException;
    new-array v1, v4, [Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected handlError(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->textView:Landroid/widget/TextView;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 291
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->showButton(I)V

    .line 293
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .parameter "progress"

    .prologue
    const/4 v1, 0x0

    .line 254
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 257
    :pswitch_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->showButton(I)V

    .line 259
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;

    invoke-virtual {v0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->isExternalStroge2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;

    const v2, 0x7f0600d0

    invoke-virtual {v1, v2}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :goto_1
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;

    iget-boolean v0, v0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->DoulSD:Z

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;

    const v2, 0x7f060047

    invoke-virtual {v1, v2}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;

    const v2, 0x7f0600cf

    invoke-virtual {v1, v2}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 270
    :pswitch_1
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;

    const v1, 0x7f060049

    invoke-virtual {v0, v1}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->handlError(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :pswitch_2
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;

    const v1, 0x7f06004a

    invoke-virtual {v0, v1}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->handlError(Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :pswitch_3
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;

    invoke-virtual {v0, v1}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->showButton(I)V

    .line 281
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;

    const v2, 0x7f060048

    invoke-virtual {v1, v2}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardTestTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
