.class Lcom/mediatek/email/emailvip/activity/VipListAdapter$VipContentLoader;
.super Landroid/content/CursorLoader;
.source "VipListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/emailvip/activity/VipListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VipContentLoader"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 7
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 162
    sget-object v2, Lcom/android/emailcommon/provider/VipMember;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/VipMember;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v4, "accountKey=?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v6, "displayName COLLATE LOCALIZED ASC"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/mediatek/email/emailvip/activity/VipListAdapter$VipContentLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
