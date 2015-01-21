.class public Lcom/mediatek/bluetooth/map/VCard;
.super Ljava/lang/Object;
.source "VCard.java"


# static fields
.field private static final BEGIN:Ljava/lang/String; = "BEGIN:VCARD"

.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final EMAIL:Ljava/lang/String; = "EMAIL"

.field private static final END:Ljava/lang/String; = "END:VCARD"

.field private static final FORMAT_NAME:Ljava/lang/String; = "FN"

.field private static final NAME:Ljava/lang/String; = "N"

.field private static final SEPRATOR:Ljava/lang/String; = ":"

.field private static final TELEPHONE:Ljava/lang/String; = "TEL"

.field private static final VERSION:Ljava/lang/String; = "VERSION"

.field public static final VERSION_21:Ljava/lang/String; = "2.1"

.field public static final VERSION_30:Ljava/lang/String; = "3.0"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private mFormatName:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mTelephone:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "VCard"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/VCard;->TAG:Ljava/lang/String;

    .line 55
    const-string v0, "2.1"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/VCard;->mVersion:Ljava/lang/String;

    .line 69
    const-string v0, "2.1"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/VCard;->mVersion:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "version"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "VCard"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/VCard;->TAG:Ljava/lang/String;

    .line 55
    const-string v0, "2.1"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/VCard;->mVersion:Ljava/lang/String;

    .line 62
    const-string v0, "2.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/VCard;->mVersion:Ljava/lang/String;

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v0, "2.1"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/VCard;->mVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 177
    if-eqz p1, :cond_0

    .line 178
    const-string v0, "VCard"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/VCard;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/VCard;->mFormatName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/VCard;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTelephone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/VCard;->mTelephone:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 10
    .parameter "vcard"

    .prologue
    .line 150
    if-nez p1, :cond_1

    .line 174
    :cond_0
    return-void

    .line 153
    :cond_1
    const-string v8, "\r\n"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, elements:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v1, v0, v3

    .line 155
    .local v1, element:Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, item:[Ljava/lang/String;
    array-length v8, v4

    const/4 v9, 0x2

    if-ge v8, v9, :cond_2

    .line 154
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_2
    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, key:Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v4, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, value:Ljava/lang/String;
    const-string v8, "N"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 162
    iput-object v7, p0, Lcom/mediatek/bluetooth/map/VCard;->mName:Ljava/lang/String;

    goto :goto_1

    .line 163
    :cond_3
    const-string v8, "FN"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 164
    iput-object v7, p0, Lcom/mediatek/bluetooth/map/VCard;->mFormatName:Ljava/lang/String;

    goto :goto_1

    .line 165
    :cond_4
    const-string v8, "TEL"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 166
    iput-object v7, p0, Lcom/mediatek/bluetooth/map/VCard;->mTelephone:Ljava/lang/String;

    goto :goto_1

    .line 167
    :cond_5
    const-string v8, "EMAIL"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 168
    iput-object v7, p0, Lcom/mediatek/bluetooth/map/VCard;->mEmail:Ljava/lang/String;

    goto :goto_1

    .line 170
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unrecognized key:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/map/VCard;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/mediatek/bluetooth/map/VCard;->mEmail:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/mediatek/bluetooth/map/VCard;->mTelephone:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/mediatek/bluetooth/map/VCard;->mFormatName:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/mediatek/bluetooth/map/VCard;->mName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/VCard;->mEmail:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setFormatName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/VCard;->mFormatName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/VCard;->mName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setTelephone(Ljava/lang/String;)V
    .locals 0
    .parameter "tel"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/VCard;->mTelephone:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, vCard:Ljava/lang/StringBuilder;
    const-string v1, "BEGIN:VCARD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, "VERSION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/VCard;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/VCard;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/VCard;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_0
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/VCard;->mVersion:Ljava/lang/String;

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    const-string v1, "FN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/VCard;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/VCard;->mFormatName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_1
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/VCard;->mTelephone:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 134
    const-string v1, "TEL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/VCard;->mTelephone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/VCard;->mEmail:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 140
    const-string v1, "EMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/VCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_4
    const-string v1, "END:VCARD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
