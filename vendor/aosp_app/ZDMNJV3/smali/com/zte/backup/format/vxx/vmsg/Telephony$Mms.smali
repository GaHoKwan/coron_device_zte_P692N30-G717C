.class public final Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Lcom/zte/backup/format/vxx/vmsg/Telephony$BaseMmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/backup/format/vxx/vmsg/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms$Addr;,
        Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms$Draft;,
        Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms$Inbox;,
        Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms$Intents;,
        Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms$Outbox;,
        Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms$Part;,
        Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms$Rate;,
        Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms$ScrapSpace;,
        Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms$Sent;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

.field public static final QUOTED_STRING_PATTERN:Ljava/util/regex/Pattern;

.field public static final REPORT_REQUEST_URI:Landroid/net/Uri;

.field public static final REPORT_STATUS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1345
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 1348
    sget-object v0, Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "report-request"

    .line 1347
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms;->REPORT_REQUEST_URI:Landroid/net/Uri;

    .line 1351
    sget-object v0, Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "report-status"

    .line 1350
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms;->REPORT_STATUS_URI:Landroid/net/Uri;

    .line 1364
    const-string v0, "\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1363
    sput-object v0, Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    .line 1372
    const-string v0, "\\s*\"([^\"]*)\"\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1371
    sput-object v0, Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms;->QUOTED_STRING_PATTERN:Ljava/util/regex/Pattern;

    .line 1341
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "address"

    .prologue
    .line 1404
    sget-object v1, Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1406
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1407
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 1409
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static final getMessageBoxName(I)Ljava/lang/String;
    .locals 3
    .parameter "msgBox"

    .prologue
    .line 1387
    packed-switch p0, :pswitch_data_0

    .line 1399
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid message box: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1389
    :pswitch_0
    const-string v0, "all"

    .line 1397
    :goto_0
    return-object v0

    .line 1391
    :pswitch_1
    const-string v0, "inbox"

    goto :goto_0

    .line 1393
    :pswitch_2
    const-string v0, "sent"

    goto :goto_0

    .line 1395
    :pswitch_3
    const-string v0, "drafts"

    goto :goto_0

    .line 1397
    :pswitch_4
    const-string v0, "outbox"

    goto :goto_0

    .line 1387
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static isEmailAddress(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 1419
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1420
    const/4 v2, 0x0

    .line 1425
    :goto_0
    return v2

    .line 1423
    :cond_0
    invoke-static {p0}, Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1424
    .local v1, s:Ljava/lang/String;
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1425
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_0
.end method

.method public static isPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    .line 1435
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1436
    const/4 v1, 0x0

    .line 1440
    :goto_0
    return v1

    .line 1439
    :cond_0
    sget-object v1, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1440
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "projection"

    .prologue
    const/4 v3, 0x0

    .line 1376
    sget-object v1, Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "date DESC"

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "projection"
    .parameter "where"
    .parameter "orderBy"

    .prologue
    .line 1382
    sget-object v1, Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 1383
    const/4 v4, 0x0

    if-nez p3, :cond_0

    const-string v5, "date DESC"

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 1382
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v5, p3

    .line 1383
    goto :goto_0
.end method
