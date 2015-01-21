.class public final Lo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Hashtable;

.field public static final a:Lo;

.field public static final b:Lo;

.field public static final c:Lo;

.field public static final d:Lo;

.field public static final e:Lo;

.field public static final f:Lo;

.field public static final g:Lo;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lo;->a:Ljava/util/Hashtable;

    .line 38
    new-instance v0, Lo;

    const-string v1, "OTHER"

    invoke-direct {v0, v1}, Lo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo;->a:Lo;

    .line 47
    new-instance v0, Lo;

    const-string v1, "ORIENTATION"

    invoke-direct {v0, v1}, Lo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo;->b:Lo;

    .line 58
    new-instance v0, Lo;

    const-string v1, "BYTE_SEGMENTS"

    invoke-direct {v0, v1}, Lo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo;->c:Lo;

    .line 64
    new-instance v0, Lo;

    const-string v1, "ERROR_CORRECTION_LEVEL"

    invoke-direct {v0, v1}, Lo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo;->d:Lo;

    .line 69
    new-instance v0, Lo;

    const-string v1, "ISSUE_NUMBER"

    invoke-direct {v0, v1}, Lo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo;->e:Lo;

    .line 75
    new-instance v0, Lo;

    const-string v1, "SUGGESTED_PRICE"

    invoke-direct {v0, v1}, Lo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo;->f:Lo;

    .line 81
    new-instance v0, Lo;

    const-string v1, "POSSIBLE_COUNTRY"

    invoke-direct {v0, v1}, Lo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo;->g:Lo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lo;->a:Ljava/lang/String;

    .line 87
    sget-object v0, Lo;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lo;->a:Ljava/lang/String;

    return-object v0
.end method
