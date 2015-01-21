.class interface abstract Lcom/android/providers/contacts/aggregation/ContactAggregator$AggregationQuery;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "AggregationQuery"
.end annotation


# static fields
.field public static final ACCOUNT_ID:I = 0x2

.field public static final CONTACT_ID:I = 0x1

.field public static final SQL:Ljava/lang/String; = "SELECT _id,contact_id, account_id FROM raw_contacts WHERE _id IN("

.field public static final _ID:I
