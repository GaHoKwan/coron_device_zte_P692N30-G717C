.class Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;
.super Landroid/text/method/DialerKeyListener;
.source "DTMFTwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DTMFTwelveKeyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DTMFKeyListener"
.end annotation


# instance fields
.field public final DTMF_CHARACTERS:[C

.field final synthetic this$0:Lcom/android/phone/DTMFTwelveKeyDialer;


# direct methods
.method private constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialer;)V
    .locals 1
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 176
    invoke-direct {p0}, Landroid/text/method/DialerKeyListener;-><init>()V

    .line 350
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->DTMF_CHARACTERS:[C

    .line 177
    return-void

    .line 350
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x23t 0x0t
        0x2at 0x0t
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialer;Lcom/android/phone/DTMFTwelveKeyDialer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;-><init>(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    return-void
.end method

.method private isAcceptableModifierKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 199
    packed-switch p1, :pswitch_data_0

    .line 206
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 204
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private lookup(Landroid/view/KeyEvent;)C
    .locals 4
    .parameter "event"

    .prologue
    .line 328
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 329
    .local v1, meta:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getNumber()C

    move-result v2

    .line 331
    .local v2, number:I
    and-int/lit8 v3, v1, 0x3

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    .line 333
    .local v0, match:I
    if-eqz v0, :cond_1

    move v2, v0

    .line 336
    .end local v0           #match:I
    :cond_1
    int-to-char v3, v2

    return v3
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->DTMF_CHARACTERS:[C

    return-object v0
.end method

.method isKeyEventAcceptable(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;)C

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->ok([CC)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;)C

    move-result v0

    .line 273
    .local v0, c:C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMFKeyListener.onKeyDown: event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->ok([CC)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMFKeyListener reading \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' from input."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000(Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->processDtmf(C)V
    invoke-static {v1, v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$100(Lcom/android/phone/DTMFTwelveKeyDialer;C)V

    .line 282
    const/4 v1, 0x1

    .line 287
    :goto_0
    return v1

    .line 284
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMFKeyListener rejecting \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' from input."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000(Ljava/lang/String;)V

    .line 287
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 220
    invoke-virtual {p0, p4, p2}, Landroid/text/method/DialerKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v2

    int-to-char v0, v2

    .line 226
    .local v0, c:C
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->ok([CC)Z

    move-result v1

    .line 232
    .local v1, keyOK:Z
    if-eqz v1, :cond_0

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTMFKeyListener reading \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' from input."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000(Ljava/lang/String;)V

    .line 234
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->processDtmf(C)V
    invoke-static {v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$100(Lcom/android/phone/DTMFTwelveKeyDialer;C)V

    .line 238
    :goto_0
    const/4 v2, 0x1

    .line 240
    .end local v1           #keyOK:Z
    :goto_1
    return v2

    .line 236
    .restart local v1       #keyOK:Z
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTMFKeyListener rejecting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' from input."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    .end local v1           #keyOK:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onKeyUp(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 298
    if-nez p1, :cond_0

    .line 317
    :goto_0
    return v1

    .line 306
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;)C

    move-result v0

    .line 307
    .local v0, c:C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTMFKeyListener.onKeyUp: event \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->ok([CC)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping the tone for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000(Ljava/lang/String;)V

    .line 313
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    goto :goto_0

    .line 317
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 252
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 255
    invoke-virtual {p0, p4, p2}, Landroid/text/method/DialerKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v2

    int-to-char v0, v2

    .line 257
    .local v0, c:C
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->ok([CC)Z

    move-result v1

    .line 259
    .local v1, keyOK:Z
    if-eqz v1, :cond_0

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping the tone for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000(Ljava/lang/String;)V

    .line 261
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    .line 262
    const/4 v2, 0x1

    .line 265
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method