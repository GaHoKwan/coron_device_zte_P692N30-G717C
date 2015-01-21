.class public Lcom/mediatek/engineermode/cmmb/CmmbActivity;
.super Landroid/app/Activity;
.source "CmmbActivity.java"


# static fields
.field public static final CMMB_MBBMS30_KEY:Ljava/lang/String; = "cmmb_mbbms30_key"

.field public static final CMMB_MEMSETSPIBUF_KEY:Ljava/lang/String; = "cmmb_memsetspibuf_key"

.field public static final CMMB_MTS_KEY:Ljava/lang/String; = "cmmb_mts_key"

.field public static final CMMB_PREF:Ljava/lang/String; = "cmmb_pref"

.field public static final CMMB_SAVEMFSFILE_KEY:Ljava/lang/String; = "cmmb_savemfsfile_key"

.field public static final EXTERNALTESTVALUE:I = 0x1

.field public static final FREQKEY:Ljava/lang/String; = "FREQ"

.field public static final INTERNALTESTVALUE:I = 0x0

.field public static final OFF:Ljava/lang/String; = "0"

.field public static final ON:Ljava/lang/String; = "1"

.field public static final TAG:Ljava/lang/String; = "EM_CMMB"

.field public static final TESTKEY:Ljava/lang/String; = "MODE"


# instance fields
.field private mEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/cmmb/CmmbActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/engineermode/cmmb/CmmbActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v19, 0x7f030020

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 84
    const-string v19, "cmmb_pref"

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 86
    .local v13, preferences:Landroid/content/SharedPreferences;
    new-instance v3, Lcom/mediatek/engineermode/cmmb/CmmbActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v13}, Lcom/mediatek/engineermode/cmmb/CmmbActivity$1;-><init>(Lcom/mediatek/engineermode/cmmb/CmmbActivity;Landroid/content/SharedPreferences;)V

    .line 144
    .local v3, listener:Landroid/view/View$OnClickListener;
    const v19, 0x7f0b00d3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RadioButton;

    .line 145
    .local v16, saveOnRadioBtn:Landroid/widget/RadioButton;
    const v19, 0x7f0b00d4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RadioButton;

    .line 147
    .local v15, saveOffRadioBtn:Landroid/widget/RadioButton;
    const v19, 0x7f0b00d5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    .line 148
    .local v8, memsetOnRadioBtn:Landroid/widget/RadioButton;
    const v19, 0x7f0b00d6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    .line 150
    .local v7, memsetOffRadioBtn:Landroid/widget/RadioButton;
    const v19, 0x7f0b00d7

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RadioButton;

    .line 151
    .local v12, mtsOnRadioBtn:Landroid/widget/RadioButton;
    const v19, 0x7f0b00d8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RadioButton;

    .line 152
    .local v11, mtsOffRadioBtn:Landroid/widget/RadioButton;
    const v19, 0x7f0b00db

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 153
    .local v6, mbbms30OnRadioBtn:Landroid/widget/RadioButton;
    const v19, 0x7f0b00dc

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 155
    .local v5, mbbms30OffRadioBtn:Landroid/widget/RadioButton;
    const v19, 0x7f0b00de

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    .line 156
    .local v18, startInternalBtn:Landroid/widget/Button;
    const v19, 0x7f0b00e0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    .line 157
    .local v17, startExternalBtn:Landroid/widget/Button;
    const v19, 0x7f0b00df

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/engineermode/cmmb/CmmbActivity;->mEditText:Landroid/widget/EditText;

    .line 159
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-virtual {v15, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-virtual {v8, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-virtual {v12, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-virtual {v11, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {v6, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const-string v19, "cmmb_savemfsfile_key"

    const-string v20, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 174
    .local v14, saveMfsFile:Ljava/lang/String;
    const-string v19, "1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 175
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 176
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 182
    :goto_0
    const-string v19, "cmmb_memsetspibuf_key"

    const-string v20, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 183
    .local v9, memsetSpibuf:Ljava/lang/String;
    const-string v19, "1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 184
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 185
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 191
    :goto_1
    const-string v19, "cmmb_mts_key"

    const-string v20, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 192
    .local v10, mts:Ljava/lang/String;
    const-string v19, "1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 193
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 194
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 199
    :goto_2
    const-string v19, "cmmb_mbbms30_key"

    const-string v20, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, mbbms30:Ljava/lang/String;
    const-string v19, "1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 201
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 202
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 207
    :goto_3
    return-void

    .line 178
    .end local v4           #mbbms30:Ljava/lang/String;
    .end local v9           #memsetSpibuf:Ljava/lang/String;
    .end local v10           #mts:Ljava/lang/String;
    :cond_0
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 179
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 187
    .restart local v9       #memsetSpibuf:Ljava/lang/String;
    :cond_1
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 188
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    .line 196
    .restart local v10       #mts:Ljava/lang/String;
    :cond_2
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 197
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2

    .line 204
    .restart local v4       #mbbms30:Ljava/lang/String;
    :cond_3
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 205
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_3
.end method
