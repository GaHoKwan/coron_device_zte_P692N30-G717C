.class public final Lai;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lai;

.field public static final b:Lai;

.field public static final c:Lai;

.field public static final d:Lai;

.field public static final e:Lai;

.field public static final f:Lai;

.field public static final g:Lai;

.field public static final h:Lai;

.field public static final i:Lai;

.field public static final j:Lai;

.field public static final k:Lai;

.field public static final l:Lai;

.field public static final m:Lai;

.field public static final n:Lai;

.field public static final o:Lai;

.field public static final p:Lai;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lai;

    const-string v1, "ADDRESSBOOK"

    invoke-direct {v0, v1}, Lai;-><init>(Ljava/lang/String;)V

    sput-object v0, Lai;->a:Lai;

    .line 28
    new-instance v0, Lai;

    const-string v1, "EMAIL_ADDRESS"

    invoke-direct {v0, v1}, Lai;-><init>(Ljava/lang/String;)V

    sput-object v0, Lai;->b:Lai;

    .line 29
    new-instance v0, Lai;

    const-string v1, "PRODUCT"

    invoke-direct {v0, v1}, Lai;-><init>(Ljava/lang/String;)V

    sput-object v0, Lai;->c:Lai;

    .line 30
    new-instance v0, Lai;

    const-string v1, "URI"

    invoke-direct {v0, v1}, Lai;-><init>(Ljava/lang/String;)V

    sput-object v0, Lai;->d:Lai;

    .line 31
    new-instance v0, Lai;

    const-string v1, "TEXT"

    invoke-direct {v0, v1}, Lai;-><init>(Ljava/lang/String;)V

    sput-object v0, Lai;->e:Lai;

    .line 32
    new-instance v0, Lai;

    const-string v1, "ANDROID_INTENT"

    invoke-direct {v0, v1}, Lai;-><init>(Ljava/lang/String;)V

    sput-object v0, Lai;->f:Lai;

    .line 33
    new-instance v0, Lai;

    const-string v1, "GEO"

    invoke-direct {v0, v1}, Lai;-><init>(Ljava/lang/String;)V

    sput-object v0, Lai;->g:Lai;

    .line 34
    new-instance v0, Lai;

    const-string v1, "TEL"

    invoke-direct {v0, v1}, Lai;-><init>(Ljava/lang/String;)V

    sput-object v0, Lai;->h:Lai;

    .line 35
    new-instance v0, Lai;

    const-string v1, "SMS"

    invoke-direct {v0, v1}, Lai;-><init>(Ljava/lang/String;)V

    sput-object v0, Lai;->i:Lai;

    .line 36
    new-instance v0, Lai;

    const-string v1, "CALENDAR"

    invoke-direct {v0, v1}, Lai;-><init>(Ljava/lang/String;)V

    sput-object v0, Lai;->j:Lai;

    .line 37
    new-instance v0, Lai;

    const-string v1, "WIFI"

    invoke-direct {v0, v1}, Lai;-><init>(Ljava/lang/String;)V

    sput-object v0, Lai;->k:Lai;

    .line 38
    new-instance v0, Lai;

    const-string v1, "THEME"

    invoke-direct {v0, v1}, Lai;-><init>(Ljava/lang/String;)V

    sput-object v0, Lai;->l:Lai;

    .line 39
    new-instance v0, Lai;

    const-string v1, "WEIXIN"

    invoke-direct {v0, v1}, Lai;-><init>(Ljava/lang/String;)V

    sput-object v0, Lai;->m:Lai;

    .line 41
    new-instance v0, Lai;

    const-string v1, "NDEF_SMART_POSTER"

    invoke-direct {v0, v1}, Lai;-><init>(Ljava/lang/String;)V

    sput-object v0, Lai;->n:Lai;

    .line 42
    new-instance v0, Lai;

    const-string v1, "MOBILETAG_RICH_WEB"

    invoke-direct {v0, v1}, Lai;-><init>(Ljava/lang/String;)V

    sput-object v0, Lai;->o:Lai;

    .line 43
    new-instance v0, Lai;

    const-string v1, "ISBN"

    invoke-direct {v0, v1}, Lai;-><init>(Ljava/lang/String;)V

    sput-object v0, Lai;->p:Lai;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lai;->a:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lai;->a:Ljava/lang/String;

    return-object v0
.end method
