.class Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;
.super Lcom/android/contacts/util/PhoneNumberFormatter$PhoneNumberFormattingTextWatcherEx;
.source "DialerSearchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/dialpad/DialerSearchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DsTextWatcher"
.end annotation


# static fields
.field private static final DBG_INT:Z


# instance fields
.field private mChangeInMiddle:Z

.field private mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

.field private mFormatting:Z

.field private mSearchMode:I


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/dialpad/DialerSearchController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/contacts/util/PhoneNumberFormatter$PhoneNumberFormattingTextWatcherEx;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    .line 149
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 273
    return-void
.end method

.method private startQuery(Ljava/lang/String;I)V
    .locals 20
    .parameter "searchContent"
    .parameter "mode"

    .prologue
    .line 220
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startQuery mIsFirstLaunched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    #getter for: Lcom/mediatek/contacts/dialpad/DialerSearchController;->mIsFirstLaunched:Z
    invoke-static {v2}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->access$300(Lcom/mediatek/contacts/dialpad/DialerSearchController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->logd(Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    #getter for: Lcom/mediatek/contacts/dialpad/DialerSearchController;->mIsFirstLaunched:Z
    invoke-static {v1}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->access$300(Lcom/mediatek/contacts/dialpad/DialerSearchController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    #getter for: Lcom/mediatek/contacts/dialpad/DialerSearchController;->mFragmentView:Landroid/view/View;
    invoke-static {v2}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->access$400(Lcom/mediatek/contacts/dialpad/DialerSearchController;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    iget-object v5, v5, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0c029d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->showLoadingTips(Landroid/view/View;ZLjava/lang/String;Z)V

    .line 226
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startQuery searchContent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->logd(Ljava/lang/String;)V

    .line 227
    invoke-static/range {p1 .. p1}, Lcom/mediatek/contacts/dialpad/DialerSearchUtils;->tripHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    iget v1, v1, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mNoResultDigCnt:I

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    iget-object v1, v1, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    iget v2, v2, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mNoResultDigCnt:I

    if-le v1, v2, :cond_2

    const/16 v18, 0x1

    .line 231
    .local v18, noMoreResult:Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNoResultDigCnt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    iget v2, v2, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mNoResultDigCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " || mDigits.getText(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    iget-object v2, v2, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->logd(Ljava/lang/String;)V

    .line 233
    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "dialer_search"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 235
    .local v8, searchUri:Landroid/net/Uri;
    if-nez p1, :cond_3

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    iget-object v1, v1, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v17

    .line 237
    .local v17, displayOrder:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    iget-object v1, v1, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v19

    .line 238
    .local v19, sortOrder:I
    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "android.contacts.DISPLAY_ORDER"

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "android.contacts.SORT_ORDER"

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 242
    .local v4, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    sget-object v5, Lcom/mediatek/contacts/dialpad/DialerSearchController;->DIALER_SEARCH_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .end local v8           #searchUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    iget-object v1, v1, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mSearchNumCntQ:Ljava/util/Queue;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 267
    .end local v4           #uri:Landroid/net/Uri;
    .end local v17           #displayOrder:I
    .end local v19           #sortOrder:I
    :cond_1
    :goto_1
    return-void

    .line 228
    .end local v18           #noMoreResult:Z
    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 245
    .restart local v8       #searchUri:Landroid/net/Uri;
    .restart local v18       #noMoreResult:Z
    :cond_3
    const-string v1, "NULL_INPUT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 246
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    const/16 v6, 0x28

    const/4 v7, 0x0

    sget-object v9, Lcom/mediatek/contacts/dialpad/DialerSearchController;->DIALER_SEARCH_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    iget-object v1, v1, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mSearchNumCntQ:Ljava/util/Queue;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    .line 249
    :cond_4
    if-nez p2, :cond_5

    .line 250
    if-nez v18, :cond_1

    .line 251
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    const/16 v10, 0x32

    const/4 v11, 0x0

    const-string v1, "increment"

    invoke-static {v8, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    sget-object v13, Lcom/mediatek/contacts/dialpad/DialerSearchController;->DIALER_SEARCH_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    iget-object v1, v1, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mSearchNumCntQ:Ljava/util/Queue;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    .line 257
    :cond_5
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_1

    .line 260
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    const/16 v10, 0x3c

    const/4 v11, 0x0

    const-string v1, "simple"

    invoke-static {v8, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    sget-object v13, Lcom/mediatek/contacts/dialpad/DialerSearchController;->DIALER_SEARCH_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    iget-object v1, v1, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mSearchNumCntQ:Ljava/util/Queue;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[afterTextChanged]mSelfChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mSelfChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "||text:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "||mFormatting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mFormatting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->logd(Ljava/lang/String;)V

    .line 154
    sget-boolean v1, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mSelfChanged:Z

    if-eqz v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    #getter for: Lcom/mediatek/contacts/dialpad/DialerSearchController;->mIsFirstLaunched:Z
    invoke-static {v1}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->access$300(Lcom/mediatek/contacts/dialpad/DialerSearchController;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 161
    :cond_2
    iget-boolean v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mFormatting:Z

    if-nez v1, :cond_3

    .line 162
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mFormatting:Z

    .line 164
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 165
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, digits:Ljava/lang/String;
    iget v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mSearchMode:I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->startQuery(Ljava/lang/String;I)V

    .line 177
    .end local v0           #digits:Ljava/lang/String;
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mFormatting:Z

    goto :goto_0

    .line 167
    :cond_4
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 168
    iget-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    invoke-virtual {v1, v3}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->setSearchNumberMode(Z)V

    .line 169
    iget-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    #getter for: Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDataChanged:Z
    invoke-static {v1}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->access$200(Lcom/mediatek/contacts/dialpad/DialerSearchController;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 170
    const/4 v1, 0x0

    invoke-direct {p0, v1, v3}, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->startQuery(Ljava/lang/String;I)V

    .line 171
    iget-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    #setter for: Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDataChanged:Z
    invoke-static {v1, v3}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->access$202(Lcom/mediatek/contacts/dialpad/DialerSearchController;Z)Z

    goto :goto_1

    .line 173
    :cond_5
    const-string v1, "NULL_INPUT"

    invoke-direct {p0, v1, v3}, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->startQuery(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 181
    sget-boolean v1, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mSelfChanged:Z

    if-eqz v1, :cond_1

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[beforeTextChanged]mSelfChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mSelfChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->logd(Ljava/lang/String;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[beforeTextChanged]s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|after:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->logd(Ljava/lang/String;)V

    .line 187
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 188
    .local v0, selIdex:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 189
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mChangeInMiddle:Z

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 194
    sget-boolean v2, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mSelfChanged:Z

    if-eqz v2, :cond_0

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onTextChanged]mSelfChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mSelfChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->logd(Ljava/lang/String;)V

    .line 215
    :goto_0
    return-void

    .line 198
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onTextChanged]s:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|before:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->logd(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, digis:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mFormatting:Z

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 202
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 203
    .local v1, len:I
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    .line 204
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    invoke-virtual {v2}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->isSearchNumberOnly()Z

    move-result v2

    if-nez v2, :cond_2

    if-gt p4, v4, :cond_2

    if-gt p3, v4, :cond_2

    if-ne p4, p3, :cond_1

    add-int/lit8 v2, v1, -0x1

    if-eq p2, v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mChangeInMiddle:Z

    if-eqz v2, :cond_4

    .line 207
    :cond_2
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    invoke-virtual {v2, v4}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->setSearchNumberMode(Z)V

    .line 208
    iput v4, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mSearchMode:I

    .line 214
    .end local v1           #len:I
    :cond_3
    :goto_1
    iput-boolean v5, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mChangeInMiddle:Z

    goto :goto_0

    .line 210
    .restart local v1       #len:I
    :cond_4
    iput v5, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;->mSearchMode:I

    goto :goto_1
.end method
