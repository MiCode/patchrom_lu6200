.class public abstract Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "IndexedIntDataArrayAdapter.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDropDownResource:I

.field protected mFieldId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mNotifyOnChange:Z

.field protected mObjects:[I

.field protected mResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II[I)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mFieldId:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mNotifyOnChange:Z

    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->init(Landroid/content/Context;II[I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[I)V
    .locals 2
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 55
    iput v1, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mFieldId:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mNotifyOnChange:Z

    .line 91
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->init(Landroid/content/Context;II[I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 2
    .parameter "context"
    .parameter "objects"

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 55
    iput v1, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mFieldId:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mNotifyOnChange:Z

    .line 77
    invoke-direct {p0, p1, v1, v1, p2}, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->init(Landroid/content/Context;II[I)V

    .line 78
    return-void
.end method

.method private init(Landroid/content/Context;II[I)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mContext:Landroid/content/Context;

    .line 113
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 114
    iput p2, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mDropDownResource:I

    iput p2, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mResource:I

    .line 115
    iput-object p4, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mObjects:[I

    .line 116
    iput p3, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mFieldId:I

    .line 117
    return-void
.end method


# virtual methods
.method public get()[I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mObjects:[I

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mObjects:[I

    array-length v0, v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 224
    invoke-virtual {p0, p1, p2, p3}, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mObjects:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 201
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosition(I)I
    .locals 1
    .parameter "item"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mObjects:[I

    invoke-static {v0, p1}, Lcom/broadcom/bt/util/SearchUtil;->binarySearch([II)I

    move-result v0

    return v0
.end method

.method public abstract getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mNotifyOnChange:Z

    .line 140
    return-void
.end method

.method public set([I)V
    .locals 1
    .parameter "objects"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mObjects:[I

    .line 121
    iget-boolean v0, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->notifyDataSetChanged()V

    .line 122
    :cond_0
    return-void
.end method

.method public setDropDownViewResource(I)V
    .locals 0
    .parameter "resource"

    .prologue
    .line 215
    iput p1, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mDropDownResource:I

    .line 216
    return-void
.end method

.method public setNotifyOnChange(Z)V
    .locals 0
    .parameter "notifyOnChange"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mNotifyOnChange:Z

    .line 158
    return-void
.end method
