.class public Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:J

.field private a:La;

.field private a:Ljava/lang/String;

.field private a:[B

.field private a:[Lp;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Llb;

    invoke-direct {v0}, Llb;-><init>()V

    sput-object v0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    iput-object p1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    iput-object p1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->b:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a:J

    return-wide v0
.end method

.method public a()La;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a:La;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a:J

    .line 28
    return-void
.end method

.method public a(La;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a:La;

    .line 40
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->b:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public a([B)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a:[B

    .line 32
    return-void
.end method

.method public a([Lp;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a:[Lp;

    .line 36
    return-void
.end method

.method public a()[B
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a:[B

    return-object v0
.end method

.method public a()[Lp;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a:[Lp;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-wide v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    return-void
.end method
