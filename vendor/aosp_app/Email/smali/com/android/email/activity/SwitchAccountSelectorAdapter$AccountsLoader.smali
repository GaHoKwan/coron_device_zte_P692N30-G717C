.class Lcom/android/email/activity/SwitchAccountSelectorAdapter$AccountsLoader;
.super Lcom/android/email/data/ThrottlingCursorLoader;
.source "SwitchAccountSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/SwitchAccountSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccountsLoader"
.end annotation


# static fields
.field private static final ACCOUNT_LOADER_MAX_TIME_OUT:I = 0xbb8

.field private static final ACCOUNT_LOADER_MIN_TIME_OUT:I = 0x3e8


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 159
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/activity/SwitchAccountSelectorAdapter;->access$000()[Ljava/lang/String;

    move-result-object v3

    const-string v6, "isDefault desc, _id"

    const/16 v7, 0x3e8

    const/16 v8, 0xbb8

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v8}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)V

    .line 161
    iput-object p1, p0, Lcom/android/email/activity/SwitchAccountSelectorAdapter$AccountsLoader;->mContext:Landroid/content/Context;

    .line 162
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    .line 167
    .local v0, accountsCursor:Landroid/database/Cursor;
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/email/activity/SwitchAccountSelectorAdapter$AccountsLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
