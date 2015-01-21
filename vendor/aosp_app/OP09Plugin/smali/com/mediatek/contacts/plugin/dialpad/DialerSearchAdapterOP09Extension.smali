.class public Lcom/mediatek/contacts/plugin/dialpad/DialerSearchAdapterOP09Extension;
.super Lcom/android/contacts/ext/DialerSearchAdapterExtension;
.source "DialerSearchAdapterOP09Extension.java"


# static fields
.field private static final CALL_LOG_DATE_INDEX:I = 0x2

.field private static final ID:Ljava/lang/String; = "id"

.field private static final ID_NAME_DATE:Ljava/lang/String; = "date"

.field private static final TAG:Ljava/lang/String; = "DialerSearchAdapterOP09Extension"


# instance fields
.field private mOP09ContactsPlugin:Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;)V
    .locals 0
    .parameter "op09ContactsPlugin"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/contacts/ext/DialerSearchAdapterExtension;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/dialpad/DialerSearchAdapterOP09Extension;->mOP09ContactsPlugin:Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;

    .line 26
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 52
    const-string v0, "DialerSearchAdapterOP09Extension"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method private updateCallLogDate(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 37
    const-string v6, "updateCallLogDate()"

    invoke-static {v6}, Lcom/mediatek/contacts/plugin/dialpad/DialerSearchAdapterOP09Extension;->log(Ljava/lang/String;)V

    .line 38
    iget-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/DialerSearchAdapterOP09Extension;->mOP09ContactsPlugin:Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;

    invoke-virtual {v6}, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->getTimezoneRawOffset()I

    move-result v6

    if-nez v6, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 42
    .local v5, resource:Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v4, packageName:Ljava/lang/String;
    const-string v6, "date"

    const-string v7, "id"

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 44
    .local v3, dateView:Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 45
    invoke-static {p2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 46
    .local v2, dateFormat:Ljava/text/DateFormat;
    const/4 v6, 0x2

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 47
    .local v0, date:J
    iget-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/DialerSearchAdapterOP09Extension;->mOP09ContactsPlugin:Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;

    invoke-virtual {v6, v0, v1}, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->getTimezoneOffset(J)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public bindCallLogViewPost(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/contacts/plugin/dialpad/DialerSearchAdapterOP09Extension;->updateCallLogDate(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 30
    return-void
.end method

.method public bindContactCallLogViewPost(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/contacts/plugin/dialpad/DialerSearchAdapterOP09Extension;->updateCallLogDate(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 34
    return-void
.end method
