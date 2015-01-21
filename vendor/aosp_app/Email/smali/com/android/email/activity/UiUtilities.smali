.class public Lcom/android/email/activity/UiUtilities;
.super Ljava/lang/Object;
.source "UiUtilities.java"


# static fields
.field private static sDebugForcedPaneMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    sput v0, Lcom/android/email/activity/UiUtilities;->sDebugForcedPaneMode:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private static checkView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter "v"

    .prologue
    .line 114
    if-nez p0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View doesn\'t exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    return-object p0
.end method

.method public static formatSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "size"

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 51
    .local v6, res:Landroid/content/res/Resources;
    const-wide/16 v2, 0x400

    .line 52
    .local v2, KB:J
    const-wide/32 v4, 0x100000

    .line 53
    .local v4, MB:J
    const-wide/32 v0, 0x40000000

    .line 58
    .local v0, GB:J
    const-wide/16 v9, 0x400

    cmp-long v9, p1, v9

    if-gez v9, :cond_0

    .line 59
    const v7, 0x7f0d000a

    .line 60
    .local v7, resId:I
    long-to-int v8, p1

    .line 71
    .local v8, value:I
    :goto_0
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 61
    .end local v7           #resId:I
    .end local v8           #value:I
    :cond_0
    const-wide/32 v9, 0x100000

    cmp-long v9, p1, v9

    if-gez v9, :cond_1

    .line 62
    const v7, 0x7f0d000b

    .line 63
    .restart local v7       #resId:I
    const-wide/16 v9, 0x400

    div-long v9, p1, v9

    long-to-int v8, v9

    .restart local v8       #value:I
    goto :goto_0

    .line 64
    .end local v7           #resId:I
    .end local v8           #value:I
    :cond_1
    const-wide/32 v9, 0x40000000

    cmp-long v9, p1, v9

    if-gez v9, :cond_2

    .line 65
    const v7, 0x7f0d000c

    .line 66
    .restart local v7       #resId:I
    const-wide/32 v9, 0x100000

    div-long v9, p1, v9

    long-to-int v8, v9

    .restart local v8       #value:I
    goto :goto_0

    .line 68
    .end local v7           #resId:I
    .end local v8           #value:I
    :cond_2
    const v7, 0x7f0d000d

    .line 69
    .restart local v7       #resId:I
    const-wide/32 v9, 0x40000000

    div-long v9, p1, v9

    long-to-int v8, v9

    .restart local v8       #value:I
    goto :goto_0
.end method

.method public static getMessageCountForUi(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "count"
    .parameter "replaceZeroWithBlank"

    .prologue
    .line 76
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 77
    const-string v0, ""

    .line 81
    :goto_0
    return-object v0

    .line 78
    :cond_0
    const/16 v0, 0x3e7

    if-le p1, v0, :cond_1

    .line 79
    const v0, 0x7f0801ff

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getView(Landroid/app/Activity;I)Landroid/view/View;
    .locals 1
    .parameter "parent"
    .parameter "viewId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/UiUtilities;->checkView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getView(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "parent"
    .parameter "viewId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/UiUtilities;->checkView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getViewOrNull(Landroid/app/Activity;I)Landroid/view/View;
    .locals 1
    .parameter "parent"
    .parameter "viewId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getViewOrNull(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "parent"
    .parameter "viewId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static installFragment(Landroid/app/Fragment;)V
    .locals 2
    .parameter "fragment"

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 150
    .local v0, a:Landroid/app/Activity;
    instance-of v1, v0, Lcom/android/email/activity/FragmentInstallable;

    if-eqz v1, :cond_0

    .line 151
    check-cast v0, Lcom/android/email/activity/FragmentInstallable;

    .end local v0           #a:Landroid/app/Activity;
    invoke-interface {v0, p0}, Lcom/android/email/activity/FragmentInstallable;->onInstallFragment(Landroid/app/Fragment;)V

    .line 153
    :cond_0
    return-void
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 306
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 307
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static setDebugPaneMode(I)V
    .locals 0
    .parameter "paneMode"

    .prologue
    .line 176
    sput p0, Lcom/android/email/activity/UiUtilities;->sDebugForcedPaneMode:I

    .line 177
    return-void
.end method

.method public static setVisibilitySafe(Landroid/app/Activity;II)V
    .locals 1
    .parameter "parent"
    .parameter "viewId"
    .parameter "visibility"

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;I)V

    .line 134
    return-void
.end method

.method public static setVisibilitySafe(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "visibility"

    .prologue
    .line 124
    if-eqz p0, :cond_0

    .line 125
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    :cond_0
    return-void
.end method

.method public static setVisibilitySafe(Landroid/view/View;II)V
    .locals 1
    .parameter "parent"
    .parameter "viewId"
    .parameter "visibility"

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;I)V

    .line 141
    return-void
.end method

.method public static setupLengthFilter(Landroid/widget/EditText;Landroid/content/Context;IZ)V
    .locals 6
    .parameter "inputText"
    .parameter "context"
    .parameter "maxLength"
    .parameter "showToast"

    .prologue
    .line 203
    new-instance v1, Lcom/android/email/activity/UiUtilities$1;

    invoke-direct {v1, p2, p2, p3, p1}, Lcom/android/email/activity/UiUtilities$1;-><init>(IIZLandroid/content/Context;)V

    .line 222
    .local v1, filter:Landroid/text/InputFilter$LengthFilter;
    invoke-virtual {p0}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v2

    .line 223
    .local v2, filters:[Landroid/text/InputFilter;
    const/4 v4, 0x0

    .line 224
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_1

    .line 225
    aget-object v5, v2, v3

    instance-of v5, v5, Landroid/text/InputFilter$LengthFilter;

    if-nez v5, :cond_0

    .line 226
    add-int/lit8 v4, v4, 0x1

    .line 224
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    :cond_1
    add-int/lit8 v5, v4, 0x1

    new-array v0, v5, [Landroid/text/InputFilter;

    .line 232
    .local v0, contentFilters:[Landroid/text/InputFilter;
    const/4 v3, 0x0

    :goto_1
    array-length v5, v2

    if-ge v3, v5, :cond_3

    .line 233
    aget-object v5, v2, v3

    instance-of v5, v5, Landroid/text/InputFilter$LengthFilter;

    if-nez v5, :cond_2

    .line 234
    aget-object v5, v2, v3

    aput-object v5, v0, v3

    .line 232
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 237
    :cond_3
    aput-object v1, v0, v4

    .line 238
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 239
    return-void
.end method

.method public static showContacts(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;Lcom/android/emailcommon/mail/Address;)V
    .locals 7
    .parameter "context"
    .parameter "photoView"
    .parameter "quickContactLookupUri"
    .parameter "address"

    .prologue
    const/4 v6, 0x0

    .line 274
    if-eqz p2, :cond_0

    .line 276
    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v4, v5}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const v4, 0x7f080060

    invoke-static {p0, v4}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ShowQuickContact ActivityNotFoundException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_0
    const-string v4, "mailto"

    invoke-virtual {p3}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 286
    .local v2, mailUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 290
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p3}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, senderPersonal:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 292
    const-string v4, "name"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    :cond_1
    const/high16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 296
    const/4 v4, 0x1

    invoke-static {p0, v1, v4}, Lcom/android/email/activity/UiUtilities;->startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method public static showTwoPaneSearchResults(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 3
    .parameter "fromContext"
    .parameter "intent"
    .parameter "showToast"

    .prologue
    .line 260
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Landroid/content/ActivityNotFoundException;
    if-eqz p2, :cond_0

    .line 263
    const v1, 0x7f080060

    invoke-static {p0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 266
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRemoteActivity ActivityNotFoundException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startRemoteActivityForResult(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    .locals 3
    .parameter "fromActivity"
    .parameter "intent"
    .parameter "requestCode"
    .parameter "showToast"

    .prologue
    .line 245
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Landroid/content/ActivityNotFoundException;
    if-eqz p3, :cond_0

    .line 248
    const v1, 0x7f080060

    invoke-static {p0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 251
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRemoteActivityForResult ActivityNotFoundException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static uninstallFragment(Landroid/app/Fragment;)V
    .locals 2
    .parameter "fragment"

    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 162
    .local v0, a:Landroid/app/Activity;
    instance-of v1, v0, Lcom/android/email/activity/FragmentInstallable;

    if-eqz v1, :cond_0

    .line 163
    check-cast v0, Lcom/android/email/activity/FragmentInstallable;

    .end local v0           #a:Landroid/app/Activity;
    invoke-interface {v0, p0}, Lcom/android/email/activity/FragmentInstallable;->onUninstallFragment(Landroid/app/Fragment;)V

    .line 165
    :cond_0
    return-void
.end method

.method public static useTwoPane(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 183
    sget v1, Lcom/android/email/activity/UiUtilities;->sDebugForcedPaneMode:I

    if-ne v1, v0, :cond_1

    .line 184
    const/4 v0, 0x0

    .line 189
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    sget v1, Lcom/android/email/activity/UiUtilities;->sDebugForcedPaneMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method
