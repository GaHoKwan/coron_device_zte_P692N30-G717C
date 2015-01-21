.class public Lcom/zte/retrieve/service/format/FormatterProxy;
.super Ljava/lang/Object;
.source "FormatterProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;
    }
.end annotation


# static fields
.field private static mFormatterProxy:Lcom/zte/retrieve/service/format/FormatterProxy;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsAvailableExternal:Z

.field private mIsAvailableVirtual:Z

.field private mReceiver:Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;

.field private mResultExternal:I

.field private mResultVirtual:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/retrieve/service/format/FormatterProxy;->mFormatterProxy:Lcom/zte/retrieve/service/format/FormatterProxy;

    .line 20
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "mContext"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v2, p0, Lcom/zte/retrieve/service/format/FormatterProxy;->mContext:Landroid/content/Context;

    .line 24
    iput-boolean v1, p0, Lcom/zte/retrieve/service/format/FormatterProxy;->mIsAvailableVirtual:Z

    .line 25
    iput-boolean v1, p0, Lcom/zte/retrieve/service/format/FormatterProxy;->mIsAvailableExternal:Z

    .line 26
    iput v0, p0, Lcom/zte/retrieve/service/format/FormatterProxy;->mResultVirtual:I

    .line 27
    iput v0, p0, Lcom/zte/retrieve/service/format/FormatterProxy;->mResultExternal:I

    .line 28
    iput-object v2, p0, Lcom/zte/retrieve/service/format/FormatterProxy;->mReceiver:Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;

    .line 31
    iput-object p1, p0, Lcom/zte/retrieve/service/format/FormatterProxy;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/zte/retrieve/service/format/FormatterProxy;->regReceiver()V

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/service/format/FormatterProxy;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/zte/retrieve/service/format/FormatterProxy;->mIsAvailableVirtual:Z

    return-void
.end method

.method static synthetic access$1(Lcom/zte/retrieve/service/format/FormatterProxy;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/zte/retrieve/service/format/FormatterProxy;->mResultVirtual:I

    return-void
.end method

.method static synthetic access$2(Lcom/zte/retrieve/service/format/FormatterProxy;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/retrieve/service/format/FormatterProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/zte/retrieve/service/format/FormatterProxy;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/zte/retrieve/service/format/FormatterProxy;->mIsAvailableExternal:Z

    return-void
.end method

.method static synthetic access$4(Lcom/zte/retrieve/service/format/FormatterProxy;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/zte/retrieve/service/format/FormatterProxy;->mResultExternal:I

    return-void
.end method

.method static synthetic access$5(Lcom/zte/retrieve/service/format/FormatterProxy;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lcom/zte/retrieve/service/format/FormatterProxy;->mResultVirtual:I

    return v0
.end method

.method static synthetic access$6(Lcom/zte/retrieve/service/format/FormatterProxy;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/zte/retrieve/service/format/FormatterProxy;->mResultExternal:I

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/retrieve/service/format/FormatterProxy;
    .locals 2
    .parameter "context"

    .prologue
    .line 42
    sget-object v0, Lcom/zte/retrieve/service/format/FormatterProxy;->mFormatterProxy:Lcom/zte/retrieve/service/format/FormatterProxy;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/zte/retrieve/service/format/FormatterProxy;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/retrieve/service/format/FormatterProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/retrieve/service/format/FormatterProxy;->mFormatterProxy:Lcom/zte/retrieve/service/format/FormatterProxy;

    .line 46
    :cond_0
    sget-object v0, Lcom/zte/retrieve/service/format/FormatterProxy;->mFormatterProxy:Lcom/zte/retrieve/service/format/FormatterProxy;

    return-object v0
.end method

.method private regReceiver()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.zte.retrieve.FORMAT_COMPLETE_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    new-instance v1, Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;-><init>(Lcom/zte/retrieve/service/format/FormatterProxy;Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;)V

    iput-object v1, p0, Lcom/zte/retrieve/service/format/FormatterProxy;->mReceiver:Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;

    .line 65
    iget-object v1, p0, Lcom/zte/retrieve/service/format/FormatterProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/retrieve/service/format/FormatterProxy;->mReceiver:Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    return-void
.end method

.method private unregReceiver()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zte/retrieve/service/format/FormatterProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/retrieve/service/format/FormatterProxy;->mReceiver:Lcom/zte/retrieve/service/format/FormatterProxy$FormatCompleteReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 70
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/zte/retrieve/service/format/FormatterProxy;->unregReceiver()V

    .line 38
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 39
    return-void
.end method

.method public format()V
    .locals 3

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/zte/retrieve/service/format/FormatterProxy;->mIsAvailableVirtual:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/retrieve/service/format/FormatterProxy;->mIsAvailableExternal:Z

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "start formatter virtual storage"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/zte/retrieve/service/format/Formatter;

    iget-object v1, p0, Lcom/zte/retrieve/service/format/FormatterProxy;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zte/retrieve/service/format/Formatter;-><init>(Landroid/content/Context;I)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/retrieve/service/format/FormatterProxy;->mIsAvailableVirtual:Z

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v0, "Try again later"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0
.end method
