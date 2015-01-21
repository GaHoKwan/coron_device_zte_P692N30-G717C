.class public Lcom/zte/heartyservice/common/datatype/CommonItem;
.super Ljava/lang/Object;
.source "CommonItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID_UNDEFINED:J = -0x1L


# instance fields
.field public extras:Landroid/os/Bundle;

.field public id:J

.field public summary:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/zte/heartyservice/common/datatype/CommonItem$1;

    invoke-direct {v0}, Lcom/zte/heartyservice/common/datatype/CommonItem$1;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/common/datatype/CommonItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/zte/heartyservice/common/datatype/CommonItem;->id:J

    .line 14
    iput-object v2, p0, Lcom/zte/heartyservice/common/datatype/CommonItem;->title:Ljava/lang/String;

    .line 15
    iput-object v2, p0, Lcom/zte/heartyservice/common/datatype/CommonItem;->summary:Ljava/lang/String;

    .line 16
    iput-object v2, p0, Lcom/zte/heartyservice/common/datatype/CommonItem;->extras:Landroid/os/Bundle;

    .line 19
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "title"
    .parameter "summary"

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/zte/heartyservice/common/datatype/CommonItem;->id:J

    .line 14
    iput-object v2, p0, Lcom/zte/heartyservice/common/datatype/CommonItem;->title:Ljava/lang/String;

    .line 15
    iput-object v2, p0, Lcom/zte/heartyservice/common/datatype/CommonItem;->summary:Ljava/lang/String;

    .line 16
    iput-object v2, p0, Lcom/zte/heartyservice/common/datatype/CommonItem;->extras:Landroid/os/Bundle;

    .line 22
    iput-wide p1, p0, Lcom/zte/heartyservice/common/datatype/CommonItem;->id:J

    .line 23
    iput-object p3, p0, Lcom/zte/heartyservice/common/datatype/CommonItem;->title:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/zte/heartyservice/common/datatype/CommonItem;->summary:Ljava/lang/String;

    .line 25
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/zte/heartyservice/common/datatype/CommonItem;->id:J

    .line 14
    iput-object v2, p0, Lcom/zte/heartyservice/common/datatype/CommonItem;->title:Ljava/lang/String;

    .line 15
    iput-object v2, p0, Lcom/zte/heartyservice/common/datatype/CommonItem;->summary:Ljava/lang/String;

    .line 16
    iput-object v2, p0, Lcom/zte/heartyservice/common/datatype/CommonItem;->extras:Landroid/os/Bundle;

    .line 53
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/common/datatype/CommonItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zte/heartyservice/common/datatype/CommonItem;->id:J

    .line 41
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 42
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/common/datatype/CommonItem;->title:Ljava/lang/String;

    .line 45
    :cond_0
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cs:Ljava/lang/CharSequence;
    check-cast v0, Ljava/lang/CharSequence;

    .line 46
    .restart local v0       #cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/common/datatype/CommonItem;->summary:Ljava/lang/String;

    .line 49
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/common/datatype/CommonItem;->extras:Landroid/os/Bundle;

    .line 50
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/zte/heartyservice/common/datatype/CommonItem;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonItem;->title:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonItem;->summary:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 36
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonItem;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method
