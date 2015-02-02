.class public Lcom/mediatek/engineermode/audio/AudioDebugInfo;
.super Landroid/app/Activity;
.source "AudioDebugInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final AUDIO_RECORD_PREFER:Ljava/lang/String; = "audio_record"

.field private static final DATA_SIZE:I = 0x5a4

.field private static final DIALOG_ID_GET_DATA_ERROR:I = 0x1

.field private static final DIALOG_ID_SET_ERROR:I = 0x3

.field private static final DIALOG_ID_SET_SUCCESS:I = 0x2

.field private static final LONGEST_NUM_LEN:I = 0x5

.field private static final MAGIC_NUMBER_256:I = 0x100

.field private static final MAGIC_NUMBER_65535:I = 0xffff

.field private static final SPINNER_COUNT:I = 0x10

.field private static final VOLUME_SPEECH_SIZE:I = 0x136


# instance fields
.field private mBtnSet:Landroid/widget/Button;

.field private mData:[B

.field private mDebugValue:Landroid/widget/EditText;

.field private mSpinnerIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "arg0"

    .prologue
    const-wide/16 v9, 0x100

    const v8, 0x7f0801a5

    const/4 v7, 0x1

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 196
    iget-object v5, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mDebugValue:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 197
    const v5, 0x7f08019e

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    const/4 v5, 0x5

    iget-object v6, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mDebugValue:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_2

    iget-object v5, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mDebugValue:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 204
    :cond_2
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 209
    :cond_3
    iget-object v5, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mDebugValue:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 211
    .local v1, inputValue:J
    const-wide/32 v5, 0xffff

    cmp-long v5, v1, v5

    if-lez v5, :cond_4

    .line 212
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 216
    :cond_4
    div-long v5, v1, v9

    long-to-int v0, v5

    .line 217
    .local v0, high:I
    rem-long v5, v1, v9

    long-to-int v3, v5

    .line 218
    .local v3, low:I
    iget-object v5, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mData:[B

    iget v6, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mSpinnerIndex:I

    mul-int/lit8 v6, v6, 0x2

    add-int/lit16 v6, v6, 0x136

    int-to-byte v7, v3

    aput-byte v7, v5, v6

    .line 219
    iget-object v5, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mData:[B

    iget v6, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mSpinnerIndex:I

    mul-int/lit8 v6, v6, 0x2

    add-int/lit16 v6, v6, 0x136

    add-int/lit8 v6, v6, 0x1

    int-to-byte v7, v0

    aput-byte v7, v5, v6

    .line 221
    iget-object v5, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mData:[B

    const/16 v6, 0x5a4

    invoke-static {v5, v6}, Landroid/media/AudioSystem;->setEmParameter([BI)I

    move-result v4

    .line 222
    .local v4, result:I
    if-nez v4, :cond_5

    .line 223
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 225
    :cond_5
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Landroid/app/Activity;->showDialog(I)V

    .line 226
    const-string v5, "EM/Audio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SetEMParameter return value is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/16 v10, 0x5a4

    const/4 v11, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v8, 0x7f030002

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setContentView(I)V

    .line 101
    const v8, 0x7f0b0008

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 103
    .local v4, paramSpinner:Landroid/widget/Spinner;
    const v8, 0x7f0b000a

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mDebugValue:Landroid/widget/EditText;

    .line 104
    const v8, 0x7f0b000b

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mBtnSet:Landroid/widget/Button;

    .line 105
    iget-object v8, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    invoke-direct {v2, p0, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 110
    .local v2, mSpinnerAdatper:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v8, 0x1090009

    invoke-virtual {v2, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 112
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 113
    .local v6, resources:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v8, 0x10

    if-ge v0, v8, :cond_0

    .line 114
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0801aa

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 117
    invoke-virtual {v4, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 120
    new-array v8, v10, [B

    iput-object v8, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mData:[B

    .line 121
    const/4 v3, 0x0

    .local v3, n:I
    :goto_1
    if-ge v3, v10, :cond_1

    .line 122
    iget-object v8, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mData:[B

    aput-byte v11, v8, v3

    .line 121
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 125
    :cond_1
    iget-object v8, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mData:[B

    invoke-static {v8, v10}, Landroid/media/AudioSystem;->getEmParameter([BI)I

    move-result v7

    .line 126
    .local v7, ret:I
    if-eqz v7, :cond_2

    .line 127
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/app/Activity;->showDialog(I)V

    .line 128
    const-string v8, "EM/Audio"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Audio_DebugInfo GetEMParameter return value is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_2
    const-string v8, "audio_record"

    invoke-virtual {p0, v8, v11}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 135
    .local v5, preferences:Landroid/content/SharedPreferences;
    const-string v8, "NUM"

    invoke-interface {v5, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mSpinnerIndex:I

    .line 137
    iget v8, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mSpinnerIndex:I

    invoke-virtual {v4, v8}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 138
    iget-object v8, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mData:[B

    iget v9, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mSpinnerIndex:I

    mul-int/lit8 v9, v9, 0x2

    add-int/lit16 v9, v9, 0x136

    add-int/lit8 v9, v9, 0x1

    aget-byte v8, v8, v9

    mul-int/lit16 v8, v8, 0x100

    iget-object v9, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mData:[B

    iget v10, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mSpinnerIndex:I

    mul-int/lit8 v10, v10, 0x2

    add-int/lit16 v10, v10, 0x136

    aget-byte v9, v9, v10

    add-int v1, v8, v9

    .line 142
    .local v1, initValue:I
    iget-object v8, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mDebugValue:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "dialogId"

    .prologue
    const v3, 0x104000a

    const/4 v0, 0x0

    .line 234
    packed-switch p1, :pswitch_data_0

    .line 257
    :goto_0
    return-object v0

    .line 236
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080195

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080196

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mediatek/engineermode/audio/AudioDebugInfo$1;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/audio/AudioDebugInfo$1;-><init>(Lcom/mediatek/engineermode/audio/AudioDebugInfo;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 247
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080199

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0801a6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 252
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08019b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0801a7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mSpinnerIndex:I

    .line 162
    iget-object v3, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mData:[B

    iget v4, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mSpinnerIndex:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit16 v4, v4, 0x136

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    mul-int/lit16 v3, v3, 0x100

    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mData:[B

    iget v5, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mSpinnerIndex:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit16 v5, v5, 0x136

    aget-byte v4, v4, v5

    add-int v1, v3, v4

    .line 166
    .local v1, initValue:I
    iget-object v3, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mDebugValue:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    const-string v3, "audio_record"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 172
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 173
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "NUM"

    iget v4, p0, Lcom/mediatek/engineermode/audio/AudioDebugInfo;->mSpinnerIndex:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "EM/Audio"

    const-string v1, "do noting..."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method
