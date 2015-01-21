.class Lcom/zte/engineer/SaveItems;
.super Ljava/lang/Object;
.source "EngineerCode.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zte/engineer/SaveItems;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field checked:Z

.field pass:Z

.field title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 610
    new-instance v0, Lcom/zte/engineer/SaveItems$1;

    invoke-direct {v0}, Lcom/zte/engineer/SaveItems$1;-><init>()V

    sput-object v0, Lcom/zte/engineer/SaveItems;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    const/4 v0, 0x2

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/zte/engineer/SaveItems;->checked:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/zte/engineer/SaveItems;->pass:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 626
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/SaveItems;->title:Ljava/lang/String;

    .line 627
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/zte/engineer/SaveItems$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 587
    invoke-direct {p0, p1}, Lcom/zte/engineer/SaveItems;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 0
    .parameter "checked"
    .parameter "pass"
    .parameter "title"

    .prologue
    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    iput-boolean p1, p0, Lcom/zte/engineer/SaveItems;->checked:Z

    .line 595
    iput-boolean p2, p0, Lcom/zte/engineer/SaveItems;->pass:Z

    .line 596
    iput-object p3, p0, Lcom/zte/engineer/SaveItems;->title:Ljava/lang/String;

    .line 597
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 606
    const/4 v0, 0x2

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/zte/engineer/SaveItems;->checked:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/zte/engineer/SaveItems;->pass:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 607
    iget-object v0, p0, Lcom/zte/engineer/SaveItems;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 608
    return-void
.end method
