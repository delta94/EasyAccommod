﻿using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Text;

namespace UET.EasyAccommod.Sales.Dto.Create.Image
{
    public class ImageInput
    {
        public IFormFile Images { get; set; }
    }
}
