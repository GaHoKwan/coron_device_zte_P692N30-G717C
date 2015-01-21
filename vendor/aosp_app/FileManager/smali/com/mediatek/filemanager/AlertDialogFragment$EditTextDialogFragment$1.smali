.class Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$1;
.super Landroid/text/InputFilter$LengthFilter;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->setEditTextFilter(Landroid/widget/EditText;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final VIBRATOR_TIME:I = 0x64


# instance fields
.field mHasToasted:Z

.field final synthetic this$0:Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;

.field final synthetic val$maxLength:I


# direct methods
.method constructor <init>(Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;II)V
    .locals 1
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$1;->this$0:Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;

    iput p3, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$1;->val$maxLength:I

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$1;->mHasToasted:Z

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 10
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 404
    const/4 v5, 0x0

    .line 405
    .local v5, oldText:Ljava/lang/String;
    const/4 v3, 0x0

    .line 406
    .local v3, newText:Ljava/lang/String;
    const/4 v4, 0x0

    .line 407
    .local v4, oldSize:I
    const/4 v2, 0x0

    .line 408
    .local v2, newSize:I
    iget-object v7, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$1;->this$0:Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;

    #getter for: Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->mEditText:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->access$000(Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;)Landroid/widget/EditText;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 409
    iget-object v7, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$1;->this$0:Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;

    #getter for: Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->mEditText:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->access$000(Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 412
    :try_start_0
    const-string v7, "UTF-8"

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v4, v7

    .line 413
    const-string v7, "EditTextDialogFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "filter,oldSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",oldText="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 420
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 423
    :try_start_1
    const-string v7, "UTF-8"

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v2, v7

    .line 424
    const-string v7, "EditTextDialogFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "filter,newSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",newText ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 431
    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_3

    add-int v7, v4, v2

    iget v8, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$1;->val$maxLength:I

    if-le v7, v8, :cond_3

    .line 432
    const-string v7, "EditTextDialogFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "oldSize + newSize) > maxLength,source.length()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v7, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$1;->this$0:Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;

    invoke-virtual {v7}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "vibrator"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    .line 436
    .local v6, vibrator:Landroid/os/Vibrator;
    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    .line 437
    .local v1, hasVibrator:Z
    if-eqz v1, :cond_2

    .line 438
    const/4 v7, 0x2

    new-array v7, v7, [J

    fill-array-data v7, :array_0

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 441
    :cond_2
    const-string v7, "EditTextDialogFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "input out of range,hasVibrator:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v7, ""

    .line 451
    .end local v1           #hasVibrator:Z
    .end local v6           #vibrator:Landroid/os/Vibrator;
    :goto_2
    return-object v7

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 416
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    goto/16 :goto_0

    .line 425
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 426
    .restart local v0       #e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 427
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    .line 444
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_4

    iget-boolean v7, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$1;->mHasToasted:Z

    if-nez v7, :cond_4

    if-nez p5, :cond_4

    .line 446
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_4

    .line 447
    iget-object v7, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$1;->this$0:Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;

    iget-object v7, v7, Lcom/mediatek/filemanager/AlertDialogFragment;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    const v8, 0x7f08003b

    invoke-virtual {v7, v8}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(I)V

    .line 448
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$1;->mHasToasted:Z

    .line 451
    :cond_4
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_2

    .line 438
    nop

    :array_0
    .array-data 0x8
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
