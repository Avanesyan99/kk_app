<?php


namespace App\Http\Filters;


use Illuminate\Database\Eloquent\Builder;

class FighterFilter extends AbstractFilter
{
    public const NAME = 'f_name';
    public const WEIGHT = 'weight';
    public const CATEGORY_ID = 'category_id';


    protected function getCallbacks(): array
    {
        return [
            self::NAME => [$this, 'name'],
            self::WEIGHT => [$this, 'weight'],
            self::CATEGORY_ID => [$this, 'categoryId'],
        ];
    }

    public function name(Builder $builder, $value)
    {
        $builder->where('f_name', 'like', "%{$value}%");
    }

    public function weight(Builder $builder, $value)
    {
        $builder->where('weight', 'like', "%{$value}%");
    }

    public function categoryId(Builder $builder, $value)
    {
        $builder->where('category_id', $value);
    }
}