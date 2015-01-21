.class public Lcom/android/email/activity/AccountSelectorAdapter;
.super Landroid/widget/CursorAdapter;
.source "AccountSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;,
        Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;
    }
.end annotation


# static fields
.field private static final ACCOUNT_ID:Ljava/lang/String; = "accountId"

.field private static final ACCOUNT_POSITION:Ljava/lang/String; = "accountPosition"

.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String; = null

.field private static final ADAPTER_PROJECTION:[Ljava/lang/String; = null

.field private static final ITEM_VIEW_TYPE_ACCOUNT:I = 0x0

.field private static final MESSAGE_COUNT:Ljava/lang/String; = "unreadCount"

.field private static final ORDER_BY:Ljava/lang/String; = "isDefault desc, _id"

.field private static final ROW_TYPE:Ljava/lang/String; = "rowType"

.field private static final ROW_TYPE_ACCOUNT:I = 0x1

.field private static final ROW_TYPE_HEADER:I = -0x2

.field private static final ROW_TYPE_MAILBOX:I = 0x0

.field static final UNKNOWN_POSITION:I = -0x1

.field private static sCombinedViewDisplayName:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResourceHelper:Lcom/android/email/ResourceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "emailAddress"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/activity/AccountSelectorAdapter;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 87
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "rowType"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "emailAddress"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "unreadCount"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "accountPosition"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "accountId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/AccountSelectorAdapter;->ADAPTER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 122
    iput-object p1, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    .line 123
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 124
    invoke-static {p1}, Lcom/android/email/ResourceHelper;->getInstance(Landroid/content/Context;)Lcom/android/email/ResourceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mResourceHelper:Lcom/android/email/ResourceHelper;

    .line 125
    sput-object v1, Lcom/android/email/activity/AccountSelectorAdapter;->sCombinedViewDisplayName:Ljava/lang/String;

    .line 126
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/email/activity/AccountSelectorAdapter;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/email/activity/AccountSelectorAdapter;->ADAPTER_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountEmailAddress(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/email/activity/AccountSelectorAdapter;->getCombinedViewDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/database/Cursor;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/email/activity/AccountSelectorAdapter;->getId(Landroid/database/Cursor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static createLoader(Landroid/content/Context;JJ)Landroid/content/Loader;
    .locals 7
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJ)",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;

    invoke-static {p0}, Lcom/android/email/activity/UiUtilities;->useTwoPane(Landroid/content/Context;)Z

    move-result v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;-><init>(Landroid/content/Context;JJZ)V

    return-object v0
.end method

.method public static createLoader(Landroid/content/Context;JJZ)Landroid/content/Loader;
    .locals 8
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "lookUpTitleOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJZ)",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;

    invoke-static {p0}, Lcom/android/email/activity/UiUtilities;->useTwoPane(Landroid/content/Context;)Z

    move-result v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;-><init>(Landroid/content/Context;JJZZ)V

    return-object v0
.end method

.method private static getAccountEmailAddress(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 290
    const-string v0, "emailAddress"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAccountUnreadCount(Landroid/database/Cursor;)I
    .locals 1
    .parameter "c"

    .prologue
    .line 255
    invoke-static {p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getMessageCount(Landroid/database/Cursor;)I

    move-result v0

    return v0
.end method

.method private static getCombinedViewDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "c"

    .prologue
    .line 302
    sget-object v0, Lcom/android/email/activity/AccountSelectorAdapter;->sCombinedViewDisplayName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/AccountSelectorAdapter;->sCombinedViewDisplayName:Ljava/lang/String;

    .line 306
    :cond_0
    sget-object v0, Lcom/android/email/activity/AccountSelectorAdapter;->sCombinedViewDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method static getDisplayName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 285
    const-string v0, "displayName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getId(Landroid/database/Cursor;)J
    .locals 2
    .parameter "c"

    .prologue
    .line 262
    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getMessageCount(Landroid/database/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 298
    const-string v0, "unreadCount"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 212
    return-void
.end method

.method public getAccountId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 277
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 278
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "accountId"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 270
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/email/activity/AccountSelectorAdapter;->getId(Landroid/database/Cursor;)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5
    .parameter "position"

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 222
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 223
    const-string v1, "rowType"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, -0x2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 149
    invoke-virtual/range {p0 .. p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 150
    .local v1, c:Landroid/database/Cursor;
    move/from16 v0, p1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 152
    const-string v13, "rowType"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v14, -0x2

    if-ne v13, v14, :cond_0

    .line 153
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/AccountSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f04001e

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 154
    .local v12, view:Landroid/view/View;
    const v13, 0x7f0f0065

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 155
    .local v4, displayNameView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/email/activity/AccountSelectorAdapter;->getDisplayName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, displayName:Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    .end local v1           #c:Landroid/database/Cursor;
    :goto_0
    return-object v12

    .line 158
    .end local v3           #displayName:Ljava/lang/String;
    .end local v4           #displayNameView:Landroid/widget/TextView;
    .end local v12           #view:Landroid/view/View;
    .restart local v1       #c:Landroid/database/Cursor;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/AccountSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f04001d

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 159
    .restart local v12       #view:Landroid/view/View;
    const v13, 0x7f0f0065

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 160
    .restart local v4       #displayNameView:Landroid/widget/TextView;
    const v13, 0x7f0f0066

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 161
    .local v6, emailAddressView:Landroid/widget/TextView;
    const v13, 0x7f0f0068

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 162
    .local v11, unreadCountView:Landroid/widget/TextView;
    const v13, 0x7f0f0067

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 164
    .local v2, chipView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/email/activity/AccountSelectorAdapter;->getDisplayName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .restart local v3       #displayName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountEmailAddress(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, emailAddress:Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AccountSelectorAdapter;->isAccountItem(Landroid/database/Cursor;)Z

    move-result v9

    .line 171
    .local v9, isAccount:Z
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    if-nez v9, :cond_3

    .line 172
    :cond_1
    const/16 v13, 0x8

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :goto_1
    invoke-static {v1}, Lcom/android/email/activity/AccountSelectorAdapter;->getId(Landroid/database/Cursor;)J

    move-result-wide v7

    .line 179
    .local v7, id:J
    if-nez v9, :cond_2

    const-wide/16 v13, -0x1

    cmp-long v13, v7, v13

    if-eqz v13, :cond_6

    .line 180
    :cond_2
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountUnreadCount(Landroid/database/Cursor;)I

    move-result v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/email/activity/UiUtilities;->getMessageCountForUi(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    check-cast v1, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    .end local v1           #c:Landroid/database/Cursor;
    invoke-virtual {v1}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->getAccountId()J

    move-result-wide v13

    const-wide/high16 v15, 0x1000

    cmp-long v13, v13, v15

    if-nez v13, :cond_4

    const/4 v10, 0x1

    .line 189
    .local v10, isCombinedActive:Z
    :goto_2
    if-eqz v10, :cond_5

    invoke-static {v7, v8}, Lcom/android/emailcommon/provider/Account;->isNormalAccount(J)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 190
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/AccountSelectorAdapter;->mResourceHelper:Lcom/android/email/ResourceHelper;

    invoke-virtual {v13, v7, v8}, Lcom/android/email/ResourceHelper;->getAccountColor(J)I

    move-result v13

    invoke-virtual {v2, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 191
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 174
    .end local v7           #id:J
    .end local v10           #isCombinedActive:Z
    .restart local v1       #c:Landroid/database/Cursor;
    :cond_3
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 175
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 186
    .end local v1           #c:Landroid/database/Cursor;
    .restart local v7       #id:J
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 193
    .restart local v10       #isCombinedActive:Z
    :cond_5
    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 196
    .end local v10           #isCombinedActive:Z
    .restart local v1       #c:Landroid/database/Cursor;
    :cond_6
    const/4 v13, 0x4

    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 197
    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x2

    return v0
.end method

.method public isAccountItem(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 239
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 240
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 241
    invoke-virtual {p0, v0}, Lcom/android/email/activity/AccountSelectorAdapter;->isAccountItem(Landroid/database/Cursor;)Z

    move-result v1

    return v1
.end method

.method public isAccountItem(Landroid/database/Cursor;)Z
    .locals 4
    .parameter "c"

    .prologue
    .line 245
    const-string v0, "rowType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMailboxItem(I)Z
    .locals 5
    .parameter "position"

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 250
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 251
    const-string v1, "rowType"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 206
    const/4 v0, 0x0

    return-object v0
.end method
