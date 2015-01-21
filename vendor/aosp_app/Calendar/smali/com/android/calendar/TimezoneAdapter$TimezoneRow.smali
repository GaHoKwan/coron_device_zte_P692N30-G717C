.class public Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
.super Ljava/lang/Object;
.source "TimezoneAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/TimezoneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimezoneRow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/calendar/TimezoneAdapter$TimezoneRow;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDisplayName:Ljava/lang/String;

.field private mGmtDisplayName:Ljava/lang/String;

.field public final mId:Ljava/lang/String;

.field private final mOffset:I

.field private final mUseDaylightTime:Z

.field final synthetic this$0:Lcom/android/calendar/TimezoneAdapter;


# direct methods
.method public constructor <init>(Lcom/android/calendar/TimezoneAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "id"
    .parameter "displayName"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->this$0:Lcom/android/calendar/TimezoneAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    .line 78
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 79
    .local v0, tz:Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mUseDaylightTime:Z

    .line 80
    #getter for: Lcom/android/calendar/TimezoneAdapter;->mTime:J
    invoke-static {p1}, Lcom/android/calendar/TimezoneAdapter;->access$000(Lcom/android/calendar/TimezoneAdapter;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    .line 81
    return-void
.end method


# virtual methods
.method public buildGmtDisplayName()V
    .locals 7

    .prologue
    .line 96
    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mGmtDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 127
    :goto_0
    return-void

    .line 100
    :cond_0
    iget v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 101
    .local v2, p:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v1, name:Ljava/lang/StringBuilder;
    const-string v3, "GMT"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    if-gez v3, :cond_3

    .line 105
    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    :goto_1
    int-to-long v3, v2

    const-wide/32 v5, 0x36ee80

    div-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    const v3, 0xea60

    div-int v0, v2, v3

    .line 114
    .local v0, min:I
    rem-int/lit8 v0, v0, 0x3c

    .line 116
    const/16 v3, 0xa

    if-ge v0, v3, :cond_1

    .line 117
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    const/4 v3, 0x0

    const-string v4, "("

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v3, ") "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-boolean v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mUseDaylightTime:Z

    if-eqz v3, :cond_2

    .line 124
    const-string v3, " \u2600"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mGmtDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 107
    .end local v0           #min:I
    :cond_3
    const/16 v3, 0x2b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public compareTo(Lcom/android/calendar/TimezoneAdapter$TimezoneRow;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 173
    iget v0, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    iget v1, p1, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    if-ne v0, v1, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 176
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    iget v1, p1, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    check-cast p1, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->compareTo(Lcom/android/calendar/TimezoneAdapter$TimezoneRow;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    if-ne p0, p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v1

    .line 144
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 145
    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 148
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 150
    check-cast v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .line 151
    .local v0, other:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 152
    iget-object v3, v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 153
    goto :goto_0

    .line 155
    :cond_4
    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 156
    goto :goto_0

    .line 158
    :cond_5
    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 159
    iget-object v3, v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 160
    goto :goto_0

    .line 162
    :cond_6
    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 163
    goto :goto_0

    .line 165
    :cond_7
    iget v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    iget v4, v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 166
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 131
    const/16 v0, 0x1f

    .line 132
    .local v0, prime:I
    const/4 v1, 0x1

    .line 133
    .local v1, result:I
    iget-object v2, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 134
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 135
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    add-int v1, v2, v3

    .line 136
    return v1

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 134
    :cond_1
    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mGmtDisplayName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->buildGmtDisplayName()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mGmtDisplayName:Ljava/lang/String;

    return-object v0
.end method
