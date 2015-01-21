.class public Lcom/android/mms/widget/MmsWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "MmsWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/widget/MmsWidgetService$MmsFactory;
    }
.end annotation


# static fields
.field public static final ACTION_CONVERSATION_MODE:Ljava/lang/String; = "com android.mms.widget.ACTION_CONVERSATION_MODE"

.field public static final ACTION_FOLDER_MODE:Ljava/lang/String; = "com android.mms.widget.ACTION_FOLDER_MODE"

.field private static final DRAFT_URI:Landroid/net/Uri; = null

.field public static final EXTRA_KEY_CONVSATION_TYPE:Ljava/lang/String; = "conversation_type"

.field public static final EXTRA_KEY_FOLDER_TYPE:Ljava/lang/String; = "folder_type"

.field public static final EXTRA_KEY_THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final FOLDER_CB_OR_PUSH:I = 0x2

.field public static final FOLDER_HAS_DRAFT:I = 0x3

.field public static final FOLDER_HAS_ERROR:I = 0x4

.field public static final FOLDER_HAS_UNREAD:I = 0x1

.field public static final FOLDER_NORMAL:I = 0x5

.field public static final MORE_MESSAGES:I = 0x258

.field private static final TAG:Ljava/lang/String; = "MmsWidgetService"

.field private static final sWidgetLock:Ljava/lang/Object;


# instance fields
.field private final mConversationObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/widget/MmsWidgetService;->sWidgetLock:Ljava/lang/Object;

    .line 460
    const-string v0, "content://mms-sms/draftbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/widget/MmsWidgetService;->DRAFT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    .line 462
    new-instance v0, Lcom/android/mms/widget/MmsWidgetService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/widget/MmsWidgetService$1;-><init>(Lcom/android/mms/widget/MmsWidgetService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/widget/MmsWidgetService;->mConversationObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/mms/widget/MmsWidgetService;->sWidgetLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 450
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 451
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/widget/MmsWidgetService;->DRAFT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/widget/MmsWidgetService;->mConversationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 452
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 456
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 457
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService;->mConversationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 458
    return-void
.end method

.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 3
    .parameter "intent"

    .prologue
    .line 92
    const-string v0, "MmsWidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetViewFactory intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
