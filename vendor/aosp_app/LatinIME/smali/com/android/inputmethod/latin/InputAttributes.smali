.class public final Lcom/android/inputmethod/latin/InputAttributes;
.super Ljava/lang/Object;
.source "InputAttributes.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field public final mApplicationSpecifiedCompletionOn:Z

.field private final mInputType:I

.field public final mInputTypeNoAutoCorrect:Z

.field public final mIsSettingsSuggestionStripOn:Z

.field public final mShouldInsertSpacesAutomatically:Z


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 13
    .parameter "editorInfo"
    .parameter "isFullscreenMode"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v9, Lcom/android/inputmethod/latin/InputAttributes;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    .line 36
    if-eqz p1, :cond_1

    iget v5, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 37
    .local v5, inputType:I
    :goto_0
    and-int/lit8 v4, v5, 0xf

    .line 38
    .local v4, inputClass:I
    iput v5, p0, Lcom/android/inputmethod/latin/InputAttributes;->mInputType:I

    .line 39
    if-eq v4, v8, :cond_4

    .line 44
    if-nez p1, :cond_2

    .line 45
    iget-object v8, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v9, "No editor info for this field. Bug?"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    :goto_1
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/InputAttributes;->mIsSettingsSuggestionStripOn:Z

    .line 56
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/InputAttributes;->mInputTypeNoAutoCorrect:Z

    .line 57
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/InputAttributes;->mApplicationSpecifiedCompletionOn:Z

    .line 58
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/InputAttributes;->mShouldInsertSpacesAutomatically:Z

    .line 101
    :goto_2
    return-void

    .end local v4           #inputClass:I
    .end local v5           #inputType:I
    :cond_1
    move v5, v7

    .line 36
    goto :goto_0

    .line 46
    .restart local v4       #inputClass:I
    .restart local v5       #inputType:I
    :cond_2
    if-nez v5, :cond_3

    .line 48
    iget-object v8, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v9, "InputType.TYPE_NULL is specified"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 49
    :cond_3
    if-nez v4, :cond_0

    .line 51
    iget-object v9, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v10, "Unexpected input class: inputType=0x%08x imeOptions=0x%08x"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    iget v12, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 60
    :cond_4
    and-int/lit16 v6, v5, 0xff0

    .line 61
    .local v6, variation:I
    const/high16 v9, 0x8

    and-int/2addr v9, v5

    if-eqz v9, :cond_8

    move v3, v8

    .line 63
    .local v3, flagNoSuggestions:Z
    :goto_3
    const/high16 v9, 0x2

    and-int/2addr v9, v5

    if-eqz v9, :cond_9

    move v2, v8

    .line 65
    .local v2, flagMultiLine:Z
    :goto_4
    const v9, 0x8000

    and-int/2addr v9, v5

    if-eqz v9, :cond_a

    move v1, v8

    .line 67
    .local v1, flagAutoCorrect:Z
    :goto_5
    const/high16 v9, 0x1

    and-int/2addr v9, v5

    if-eqz v9, :cond_b

    move v0, v8

    .line 72
    .local v0, flagAutoComplete:Z
    :goto_6
    invoke-static {v5}, Lcom/android/inputmethod/latin/InputTypeUtils;->isPasswordInputType(I)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v5}, Lcom/android/inputmethod/latin/InputTypeUtils;->isVisiblePasswordInputType(I)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v6}, Lcom/android/inputmethod/latin/InputTypeUtils;->isEmailVariation(I)Z

    move-result v9

    if-nez v9, :cond_5

    const/16 v9, 0x10

    if-eq v9, v6, :cond_5

    const/16 v9, 0xb0

    if-eq v9, v6, :cond_5

    if-nez v3, :cond_5

    if-eqz v0, :cond_c

    .line 79
    :cond_5
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/InputAttributes;->mIsSettingsSuggestionStripOn:Z

    .line 84
    :goto_7
    invoke-static {v5}, Lcom/android/inputmethod/latin/InputTypeUtils;->isAutoSpaceFriendlyType(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/inputmethod/latin/InputAttributes;->mShouldInsertSpacesAutomatically:Z

    .line 90
    const/16 v9, 0xa0

    if-ne v6, v9, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    if-nez v3, :cond_7

    if-nez v1, :cond_d

    if-nez v2, :cond_d

    .line 94
    :cond_7
    iput-boolean v8, p0, Lcom/android/inputmethod/latin/InputAttributes;->mInputTypeNoAutoCorrect:Z

    .line 99
    :goto_8
    if-eqz v0, :cond_e

    if-eqz p2, :cond_e

    :goto_9
    iput-boolean v8, p0, Lcom/android/inputmethod/latin/InputAttributes;->mApplicationSpecifiedCompletionOn:Z

    goto/16 :goto_2

    .end local v0           #flagAutoComplete:Z
    .end local v1           #flagAutoCorrect:Z
    .end local v2           #flagMultiLine:Z
    .end local v3           #flagNoSuggestions:Z
    :cond_8
    move v3, v7

    .line 61
    goto :goto_3

    .restart local v3       #flagNoSuggestions:Z
    :cond_9
    move v2, v7

    .line 63
    goto :goto_4

    .restart local v2       #flagMultiLine:Z
    :cond_a
    move v1, v7

    .line 65
    goto :goto_5

    .restart local v1       #flagAutoCorrect:Z
    :cond_b
    move v0, v7

    .line 67
    goto :goto_6

    .line 81
    .restart local v0       #flagAutoComplete:Z
    :cond_c
    iput-boolean v8, p0, Lcom/android/inputmethod/latin/InputAttributes;->mIsSettingsSuggestionStripOn:Z

    goto :goto_7

    .line 96
    :cond_d
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/InputAttributes;->mInputTypeNoAutoCorrect:Z

    goto :goto_8

    :cond_e
    move v8, v7

    .line 99
    goto :goto_9
.end method

.method private dumpFlags(I)V
    .locals 3
    .parameter "inputType"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "Input class:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    and-int/lit8 v0, p1, 0xf

    .line 111
    .local v0, inputClass:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_CLASS_TEXT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_CLASS_PHONE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_CLASS_NUMBER"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 118
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_CLASS_DATETIME"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_3
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "Variation:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_4

    .line 121
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_EMAIL_ADDRESS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_4
    and-int/lit8 v1, p1, 0x30

    if-eqz v1, :cond_5

    .line 123
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_EMAIL_SUBJECT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_5
    and-int/lit16 v1, p1, 0xb0

    if-eqz v1, :cond_6

    .line 125
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_FILTER"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_6
    and-int/lit8 v1, p1, 0x50

    if-eqz v1, :cond_7

    .line 127
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_LONG_MESSAGE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_7
    and-int/lit8 v1, p1, 0x0

    if-eqz v1, :cond_8

    .line 129
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_NORMAL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_8
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_9

    .line 131
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_PASSWORD"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_9
    and-int/lit8 v1, p1, 0x60

    if-eqz v1, :cond_a

    .line 133
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_PERSON_NAME"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_a
    and-int/lit16 v1, p1, 0xc0

    if-eqz v1, :cond_b

    .line 135
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_PHONETIC"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_b
    and-int/lit8 v1, p1, 0x70

    if-eqz v1, :cond_c

    .line 137
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_POSTAL_ADDRESS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_c
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_d

    .line 139
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_SHORT_MESSAGE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_d
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_e

    .line 141
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_URI"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_e
    and-int/lit16 v1, p1, 0x90

    if-eqz v1, :cond_f

    .line 143
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_VISIBLE_PASSWORD"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_f
    and-int/lit16 v1, p1, 0xa0

    if-eqz v1, :cond_10

    .line 145
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_WEB_EDIT_TEXT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_10
    and-int/lit16 v1, p1, 0xd0

    if-eqz v1, :cond_11

    .line 147
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_11
    and-int/lit16 v1, p1, 0xe0

    if-eqz v1, :cond_12

    .line 149
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_WEB_PASSWORD"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_12
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "Flags:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/high16 v1, 0x8

    and-int/2addr v1, p1

    if-eqz v1, :cond_13

    .line 152
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_FLAG_NO_SUGGESTIONS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_13
    const/high16 v1, 0x2

    and-int/2addr v1, p1

    if-eqz v1, :cond_14

    .line 154
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_FLAG_MULTI_LINE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_14
    const/high16 v1, 0x4

    and-int/2addr v1, p1

    if-eqz v1, :cond_15

    .line 156
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_FLAG_IME_MULTI_LINE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_15
    and-int/lit16 v1, p1, 0x2000

    if-eqz v1, :cond_16

    .line 158
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_FLAG_CAP_WORDS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_16
    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_17

    .line 160
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_FLAG_CAP_SENTENCES"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_17
    and-int/lit16 v1, p1, 0x1000

    if-eqz v1, :cond_18

    .line 162
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_FLAG_CAP_CHARACTERS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_18
    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_19

    .line 164
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_FLAG_AUTO_CORRECT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_19
    const/high16 v1, 0x1

    and-int/2addr v1, p1

    if-eqz v1, :cond_1a

    .line 166
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_FLAG_AUTO_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_1a
    return-void
.end method

.method public static inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z
    .locals 3
    .parameter "packageName"
    .parameter "key"
    .parameter "editorInfo"

    .prologue
    .line 179
    if-nez p2, :cond_0

    const/4 v1, 0x0

    .line 182
    :goto_0
    return v1

    .line 180
    :cond_0
    if-eqz p0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, findingKey:Ljava/lang/String;
    :goto_1
    iget-object v1, p2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/StringUtils;->containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .end local v0           #findingKey:Ljava/lang/String;
    :cond_1
    move-object v0, p1

    .line 180
    goto :goto_1
.end method


# virtual methods
.method public isSameInputType(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 2
    .parameter "editorInfo"

    .prologue
    .line 104
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->mInputType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n mInputTypeNoAutoCorrect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->mInputTypeNoAutoCorrect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n mIsSettingsSuggestionStripOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->mIsSettingsSuggestionStripOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n mApplicationSpecifiedCompletionOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->mApplicationSpecifiedCompletionOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
