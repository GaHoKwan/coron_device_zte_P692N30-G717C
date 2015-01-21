.class public Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;
.super Ljava/lang/Object;
.source "PositionalInfoForUserDictPendingAddition.java"


# instance fields
.field private mActualWordBeingAdded:Ljava/lang/String;

.field private final mCursorPos:I

.field private final mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private final mOriginalWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/view/inputmethod/EditorInfo;)V
    .locals 0
    .parameter "word"
    .parameter "cursorPos"
    .parameter "editorInfo"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mOriginalWord:Ljava/lang/String;

    .line 42
    iput p2, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mCursorPos:I

    .line 43
    iput-object p3, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 44
    return-void
.end method


# virtual methods
.method public setActualWordBeingAdded(Ljava/lang/String;)V
    .locals 0
    .parameter "actualWordBeingAdded"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mActualWordBeingAdded:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public tryReplaceWithActualWord(Lcom/android/inputmethod/latin/RichInputConnection;Landroid/view/inputmethod/EditorInfo;I)Z
    .locals 5
    .parameter "connection"
    .parameter "editorInfo"
    .parameter "currentCursorPosition"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 77
    iget-object v3, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mActualWordBeingAdded:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mActualWordBeingAdded:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mOriginalWord:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 86
    :cond_2
    iget-object v3, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v3, v3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v3, v3, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    iget v4, p2, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    if-ne v3, v4, :cond_0

    .line 92
    iget v3, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mCursorPos:I

    if-eq p3, v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 100
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mOriginalWord:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, p3, v3

    invoke-virtual {p1, v3, p3}, Lcom/android/inputmethod/latin/RichInputConnection;->setComposingRegion(II)V

    .line 102
    iget-object v3, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mActualWordBeingAdded:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mActualWordBeingAdded:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/android/inputmethod/latin/RichInputConnection;->commitText(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 107
    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/lang/IllegalStateException;
    goto :goto_0
.end method
