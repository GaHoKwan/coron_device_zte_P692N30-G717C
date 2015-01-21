.class public Lcom/android/calendar/CalendarEventModel$ReminderEntry;
.super Ljava/lang/Object;
.source "CalendarEventModel.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarEventModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReminderEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final mMethod:I

.field private final mMinutes:I


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .parameter "minutes"
    .parameter "method"

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput p1, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMinutes:I

    .line 133
    iput p2, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    .line 134
    return-void
.end method

.method public static valueOf(I)Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    .locals 1
    .parameter "minutes"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(II)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(II)Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    .locals 1
    .parameter "minutes"
    .parameter "method"

    .prologue
    .line 112
    new-instance v0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/calendar/CalendarEventModel$ReminderEntry;)I
    .locals 2
    .parameter "re"

    .prologue
    .line 174
    iget v0, p1, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMinutes:I

    iget v1, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMinutes:I

    if-eq v0, v1, :cond_0

    .line 175
    iget v0, p1, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMinutes:I

    iget v1, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMinutes:I

    sub-int/2addr v0, v1

    .line 180
    :goto_0
    return v0

    .line 177
    :cond_0
    iget v0, p1, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    iget v1, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    if-eq v0, v1, :cond_1

    .line 178
    iget v0, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    iget v1, p1, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 180
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    check-cast p1, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->compareTo(Lcom/android/calendar/CalendarEventModel$ReminderEntry;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 143
    if-ne p0, p1, :cond_1

    move v1, v2

    .line 159
    :cond_0
    :goto_0
    return v1

    .line 146
    :cond_1
    instance-of v3, p1, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 150
    check-cast v0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 152
    .local v0, re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    iget v3, v0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMinutes:I

    iget v4, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMinutes:I

    if-ne v3, v4, :cond_0

    .line 159
    iget v3, v0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    iget v4, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    if-eq v3, v4, :cond_3

    iget v3, v0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    if-eq v3, v2, :cond_3

    :cond_2
    iget v3, v0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    if-ne v3, v2, :cond_0

    iget v3, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMinutes:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMinutes:I

    mul-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReminderEntry min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMinutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " meth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->mMethod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
