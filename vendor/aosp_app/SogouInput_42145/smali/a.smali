.class public final La;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La;

.field private static final a:Ljava/util/Hashtable;

.field public static final b:La;

.field public static final c:La;

.field public static final d:La;

.field public static final e:La;

.field public static final f:La;

.field public static final g:La;

.field public static final h:La;

.field public static final i:La;

.field public static final j:La;

.field public static final k:La;

.field public static final l:La;

.field public static final m:La;

.field public static final n:La;

.field public static final o:La;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, La;->a:Ljava/util/Hashtable;

    .line 33
    new-instance v0, La;

    const-string v1, "QR_CODE"

    invoke-direct {v0, v1}, La;-><init>(Ljava/lang/String;)V

    sput-object v0, La;->a:La;

    .line 36
    new-instance v0, La;

    const-string v1, "DATA_MATRIX"

    invoke-direct {v0, v1}, La;-><init>(Ljava/lang/String;)V

    sput-object v0, La;->b:La;

    .line 39
    new-instance v0, La;

    const-string v1, "UPC_E"

    invoke-direct {v0, v1}, La;-><init>(Ljava/lang/String;)V

    sput-object v0, La;->c:La;

    .line 42
    new-instance v0, La;

    const-string v1, "UPC_A"

    invoke-direct {v0, v1}, La;-><init>(Ljava/lang/String;)V

    sput-object v0, La;->d:La;

    .line 45
    new-instance v0, La;

    const-string v1, "EAN_8"

    invoke-direct {v0, v1}, La;-><init>(Ljava/lang/String;)V

    sput-object v0, La;->e:La;

    .line 48
    new-instance v0, La;

    const-string v1, "EAN_13"

    invoke-direct {v0, v1}, La;-><init>(Ljava/lang/String;)V

    sput-object v0, La;->f:La;

    .line 51
    new-instance v0, La;

    const-string v1, "UPC_EAN_EXTENSION"

    invoke-direct {v0, v1}, La;-><init>(Ljava/lang/String;)V

    sput-object v0, La;->g:La;

    .line 54
    new-instance v0, La;

    const-string v1, "CODE_128"

    invoke-direct {v0, v1}, La;-><init>(Ljava/lang/String;)V

    sput-object v0, La;->h:La;

    .line 57
    new-instance v0, La;

    const-string v1, "CODE_39"

    invoke-direct {v0, v1}, La;-><init>(Ljava/lang/String;)V

    sput-object v0, La;->i:La;

    .line 60
    new-instance v0, La;

    const-string v1, "CODE_93"

    invoke-direct {v0, v1}, La;-><init>(Ljava/lang/String;)V

    sput-object v0, La;->j:La;

    .line 63
    new-instance v0, La;

    const-string v1, "CODABAR"

    invoke-direct {v0, v1}, La;-><init>(Ljava/lang/String;)V

    sput-object v0, La;->k:La;

    .line 66
    new-instance v0, La;

    const-string v1, "ITF"

    invoke-direct {v0, v1}, La;-><init>(Ljava/lang/String;)V

    sput-object v0, La;->l:La;

    .line 69
    new-instance v0, La;

    const-string v1, "RSS14"

    invoke-direct {v0, v1}, La;-><init>(Ljava/lang/String;)V

    sput-object v0, La;->m:La;

    .line 72
    new-instance v0, La;

    const-string v1, "PDF417"

    invoke-direct {v0, v1}, La;-><init>(Ljava/lang/String;)V

    sput-object v0, La;->n:La;

    .line 75
    new-instance v0, La;

    const-string v1, "RSS_EXPANDED"

    invoke-direct {v0, v1}, La;-><init>(Ljava/lang/String;)V

    sput-object v0, La;->o:La;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, La;->a:Ljava/lang/String;

    .line 81
    sget-object v0, La;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public static a(Ljava/lang/String;)La;
    .locals 1
    .parameter

    .prologue
    .line 93
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 96
    :cond_1
    sget-object v0, La;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La;

    .line 97
    if-nez v0, :cond_2

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 100
    :cond_2
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, La;->a:Ljava/lang/String;

    return-object v0
.end method
