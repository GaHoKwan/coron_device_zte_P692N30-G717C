.class public abstract Lcom/nuance/dragon/toolkit/cloudservices/Param;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_AUDIO:I = 0x1

.field public static final TYPE_BYTES:I = 0x5

.field public static final TYPE_DICTIONARY:I = 0x6

.field public static final TYPE_INTEGER:I = 0x4

.field public static final TYPE_SEQUENCE:I = 0x7

.field public static final TYPE_SEQUENCE_CHUNK:I = 0x9

.field public static final TYPE_SEQUENCE_END:I = 0xa

.field public static final TYPE_SEQUENCE_START:I = 0x8

.field public static final TYPE_STRING:I = 0x3

.field public static final TYPE_TTS:I = 0x2


# instance fields
.field final a:Ljava/lang/String;

.field final b:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "type"

    const-string v2, "should be one of Param.TYPE_AUDIO, Param.TYPE_TTS, Param.TYPE_STRING, Param.TYPE_INTEGER, Param.TYPE_BYTES, Param.TYPE_DICTIONARY, Param.TYPE_SEQUENCE, Param.TYPE_SEQUENCE_START, Param.TYPE_SEQUENCE_CHUNK, Param.TYPE_SEQUENCE_END"

    if-lez p1, :cond_0

    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "key"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iput p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/Param;->b:I

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/Param;->a:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 0

    return-void
.end method

.method abstract a(Lcom/nuance/dragon/toolkit/cloudservices/d;Lcom/nuance/dragon/toolkit/cloudservices/Param$a;)Z
.end method
