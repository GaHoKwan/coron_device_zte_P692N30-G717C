.class public Lcom/mediatek/calendar/extension/PCSyncExtension;
.super Ljava/lang/Object;
.source "PCSyncExtension.java"

# interfaces
.implements Lcom/mediatek/calendar/extension/IAccountExt;


# static fields
.field private static final ACCOUNT_UNIQUE_KEY:Ljava/lang/String; = "ACCOUNT_KEY"


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/mediatek/calendar/extension/PCSyncExtension;->mActivity:Landroid/app/Activity;

    .line 15
    return-void
.end method

.method private queryAccountsExceptionPCSync([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "projection"

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "LOCAL"

    aput-object v1, v4, v0

    .line 30
    .local v4, selectArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calendar/extension/PCSyncExtension;->mActivity:Landroid/app/Activity;

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "account_type!=?1) GROUP BY (ACCOUNT_KEY"

    const-string v5, "account_name"

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 35
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method


# virtual methods
.method public accountQuery([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "projection"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/mediatek/calendar/extension/PCSyncExtension;->queryAccountsExceptionPCSync([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
