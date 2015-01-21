.class public Lcom/sohu/inputmethod/multimedia/SogouMedia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:D

.field public a:I

.field public a:Ljava/lang/String;

.field public b:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lvf;

    invoke-direct {v0}, Lvf;-><init>()V

    sput-object v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->f:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->f:Ljava/lang/String;

    .line 31
    iput p1, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:I

    .line 32
    iput-object p2, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->b:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->e:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->e:Ljava/lang/String;

    const-string v1, "input.shouji.sogou.com"

    const-string v2, "10.11.201.213:80"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->e:Ljava/lang/String;

    .line 38
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->e:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 40
    if-ne v0, v3, :cond_3

    .line 41
    iput v3, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->b:I

    .line 66
    :cond_2
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 93
    :goto_1
    return-void

    .line 43
    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 46
    if-ne v1, v3, :cond_4

    .line 47
    iput v3, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->b:I

    goto :goto_0

    .line 49
    :cond_4
    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 51
    if-ne v1, v3, :cond_5

    .line 52
    iput v3, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->b:I

    goto :goto_0

    .line 54
    :cond_5
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 56
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    iput v3, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->b:I

    goto :goto_0

    .line 68
    :pswitch_0
    iput-object p4, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->f:Ljava/lang/String;

    .line 69
    const-string v0, "text/plain"

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->c:Ljava/lang/String;

    goto :goto_1

    .line 72
    :pswitch_1
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->b:I

    if-eq v0, v3, :cond_6

    .line 73
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->b:I

    invoke-static {v0}, Lsm;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->c:Ljava/lang/String;

    goto :goto_1

    .line 75
    :cond_6
    const-string v0, "image/*"

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->c:Ljava/lang/String;

    goto :goto_1

    .line 79
    :pswitch_2
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->b:I

    if-eq v0, v3, :cond_7

    .line 80
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->b:I

    invoke-static {v0}, Lsm;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->c:Ljava/lang/String;

    goto :goto_1

    .line 82
    :cond_7
    const-string v0, "audio/*"

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->c:Ljava/lang/String;

    goto :goto_1

    .line 86
    :pswitch_3
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->b:I

    if-eq v0, v3, :cond_8

    .line 87
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->b:I

    invoke-static {v0}, Lsm;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->c:Ljava/lang/String;

    goto :goto_1

    .line 89
    :cond_8
    const-string v0, "video/*"

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->c:Ljava/lang/String;

    goto :goto_1

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:I

    packed-switch v0, :pswitch_data_0

    .line 106
    :pswitch_0
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 98
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",fileName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", body = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authcodeInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 135
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-wide v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 144
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    return-void
.end method
